import 'package:eden_life_task/feature/home/presentation/order/data/model/order_model/order_model.dart';
import 'package:eden_life_task/feature/home/presentation/order/order_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({
    super.key,
    required this.order,
  });

  final OrderModel order;

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Track Order",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
              RichText(
                text: TextSpan(
                  text: 'Order Number: ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.order.id,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Your order has been placed successfully. Order status is updated below",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
              Consumer<OrderViewModel>(
                builder: (_, model, __) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: AnimatedBuilder(
                        animation: _animationController,
                        builder: (context, child) => Row(
                          children: List.generate(
                            6,
                            (index) => Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 4,
                                      child: LinearProgressIndicator(
                                        value: index + 1 == model.orders.length
                                            ? _animation.value
                                            : 1,
                                        backgroundColor:
                                            const Color(0xFFe8d8c9),
                                        color: index + 1 <= model.orders.length
                                            ? const Color(0xFF6be600)
                                            : const Color(0xFFe8d8c9),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: index + 1 <= model.orders.length
                                          ? const Color(0xFF0c4c3b)
                                          : const Color(0xFF2d2220),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).toList(),
                        ),
                      ),
                    ),
                    if (model.message != null) ...[
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        model.message!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
