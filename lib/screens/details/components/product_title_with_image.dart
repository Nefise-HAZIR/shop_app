import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding/2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4?.copyWith(
              color: Colors.white,fontWeight: FontWeight.bold
            ),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)
                    )
                  ]
                )
              ),
              SizedBox(width: kDefaultPadding*2,),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image,fit: BoxFit.fill,)
                  )
                )
            ],
          )
        ],
      ),
    );
  }
}
