import 'package:eden_life_task/feature/home/presentation/order/model/order_model/order_model.dart';
import 'package:flutter/cupertino.dart';

class OrderViewModel extends ChangeNotifier {
  final _order = OrderModel(
    id: '1',
    date: DateTime.now(),
    item: 'Pizza Margherita',
    quantity: 2,
    price: 3000,
  );

  OrderModel get order => _order;
}
