import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/widgets/custom_widgets.dart';

class AddtocartButton extends StatelessWidget {
  final double amount;

  const AddtocartButton({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.10), borderRadius: BorderRadius.circular(100)),
      child: Row(children: [
        const SizedBox(width: 20.0),
        Text(
          '\$$amount',
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        OrangeButton(text: 'Add to cart'),
        SizedBox(
          width: 20,
        )
      ]),
    );
  }
}
