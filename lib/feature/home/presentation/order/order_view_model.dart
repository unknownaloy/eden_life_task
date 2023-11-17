import 'package:eden_life_task/config/ably_key.dart';
import 'package:eden_life_task/feature/home/presentation/order/data/enum/order_status.dart';
import 'package:eden_life_task/feature/home/presentation/order/data/model/order_model/order_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:ably_flutter/ably_flutter.dart' as ably;

class OrderViewModel extends ChangeNotifier {
  // Dummy data
  final _order = OrderModel(
    id: '123456789',
    date: DateTime.now(),
    item: 'Pizza Margherita',
    quantity: 2,
    price: 3000,
  );

  OrderModel get order => _order;

  ably.Realtime? _realtimeInstance;
  ably.RealtimeChannel? _chatChannel;

  List<OrderStatus> _orders = [];
  List<OrderStatus> get orders => _orders;

  String? _message;
  String? get message => _message;

  Future<void> initializeAbly() async {
    // Create an instance of ClientOptions with Ably key
    final clientOptions = ably.ClientOptions(
      key: ablyKey,
    );

    try {
      // Use ClientOptions to create Realtime or REST instance
      _realtimeInstance = ably.Realtime(options: clientOptions);

      _realtimeInstance?.connection
          .on(ably.ConnectionEvent.connected)
          .listen((ably.ConnectionStateChange stateChange) async {
        // Connect the to the eden-order channel
        _chatChannel = _realtimeInstance?.channels.get("eden-order");
        _subscribeToChannels();
      });
    } catch (err) {
      debugPrint("AblyService - initializeAbly -- err -> $err");
    }
  }

  void _subscribeToChannels() {
    var messageStream = _chatChannel?.subscribe();

    messageStream?.listen((ably.Message message) {
      OrderStatus orderOne = OrderStatus.values.firstWhere(
        (e) => e.status == message.name,
        orElse: () => OrderStatus.invalidOrder,
      );

      if (orderOne != OrderStatus.invalidOrder) {
        List<OrderStatus> updatedStatusList = [];

        // Loop and automatically fill up complete status
        for (int index = 0; index < OrderStatus.values.length; index++) {
          final status = OrderStatus.values[index];

          if (status != orderOne) {
            updatedStatusList.add(status);
          } else {
            break;
          }
        }

        _orders = updatedStatusList;

        if (message.data is String) {
          _message = message.data as String?;
        }

        notifyListeners();
      }
    });
  }
}
