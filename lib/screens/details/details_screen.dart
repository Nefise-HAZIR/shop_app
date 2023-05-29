import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/body.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:product.color,
      appBar: buildAppBar(context),
      body:Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      leading: IconButton(
        icon:SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
         ),
      actions: [
        IconButton(
          onPressed: () {}, 
          icon: SvgPicture.asset("assets/icons/search.svg")
          ),
        IconButton(
          onPressed: () { },
           icon: SvgPicture.asset("assets/icons/cart.svg")
           ),
        SizedBox(width: kDefaultPadding/2,)
      ],
    );
  }
}
