import 'package:eden_life_task/feature/home/presentation/order/order_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Eden Life",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF08392c),
      ),
      body: Consumer<OrderViewModel>(
        builder: (_, model, __) => Center(
          child: Card(
            color: const Color(0xFF2d2220),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    model.order.item,
                    style: const TextStyle(
                      color: Color(0xFFfff2ec),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),

                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 24,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("Quantity", style: TextStyle(
                            color: Colors.white,
                          ),),
                          const SizedBox(width: 4,),
                          Chip(label: Text(model.order.quantity.toString())),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("Price", style: TextStyle(
                            color: Colors.white,
                          ),),
                          const SizedBox(width: 4,),
                          Chip(label: Text(model.order.price.toString())),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 40,),


                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF6fe200),
                      ),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                      ),
                    ),
                    child: Text(
                      "Track your order",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.bodyLarge,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF524439),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
