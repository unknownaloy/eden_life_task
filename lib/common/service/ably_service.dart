import 'package:ably_flutter/ably_flutter.dart' as ably;
import 'package:flutter/material.dart';

class AblyService {
  ably.Realtime? realtimeInstance;
  ably.RealtimeChannel? chatChannel;

  Future<void> initializeAbly() async {
    // Create an instance of ClientOptions with Ably key
    final clientOptions = ably.ClientOptions(
      key: '1NXZvQ.OdX4Ig:j1uTkyaFn777lzj6zlFUtsgvG35x_wasFm7I3wpgTdg',
    );

    try {
      // Use ClientOptions to create Realtime or REST instance
      realtimeInstance = ably.Realtime(options: clientOptions);

      realtimeInstance?.connection
          .on(ably.ConnectionEvent
              .connected) // Any type of `ConnectionEvent` can be specified
          .listen((ably.ConnectionStateChange stateChange) async {
        // Handle connection state change events

        debugPrint(
          "AblyService - initializeAbly -- Realtime connection state changed: ${stateChange.current}",
        );

        chatChannel = realtimeInstance?.channels.get("eden-order");
        subscribeToChannels();
      });
    } catch (err) {
      debugPrint("AblyService - initializeAbly -- err -> $err");
    }
  }

  void subscribeToChannels() {
    var messageStream = chatChannel?.subscribe();

    messageStream?.listen((ably.Message message) {
      debugPrint(
          "AblyService - subscribeToChannels -- message -> ${message.data}");
    });
  }
}
