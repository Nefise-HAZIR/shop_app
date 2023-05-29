import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});
  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutLinedButton(
            icon: Icons.remove,
            press: () {
                if (numOfItems>1) {
                  setState(() {
                  numOfItems--;
                  });
                }     
            }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutLinedButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        )
      ],
    );
  }

  SizedBox buildOutLinedButton({ required IconData icon, required Function  press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))),
        ),
        onPressed:()=> press(),
        child: Icon(icon),
      ),
    );
  }
}