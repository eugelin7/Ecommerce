import 'package:ecommerce/=models=/hot_sales_item.dart';
import 'package:ecommerce/logic/cart_cubit.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarouselBuyButton extends StatelessWidget {
  final HotSalesItem item;

  const CarouselBuyButton({super.key, required this.item});

  static const kButtonWidth = 100.0;
  static const kButtonHeight = 24.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          width: kButtonWidth,
          height: kButtonHeight,
          decoration: const BoxDecoration(
            color: ThemeColors.kHotSalesTextColor,
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: const Text(
            'Buy now!',
            style: TextStyle(
              fontFamily: 'SFProDisplay',
              color: ThemeColors.kPrimaryTextColor,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: kButtonWidth,
          height: kButtonHeight,
          child: Material(
            color: Colors.transparent,
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              onTap: () {
                //print('${item.id} ${item.title}');
                context.read<CartCubit>().addProductId(item.id);
              },
            ),
          ),
        )
      ],
    );
  }
}
