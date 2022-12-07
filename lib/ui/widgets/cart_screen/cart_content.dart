import 'package:ecommerce/logic/cart_cubit.dart';
import 'package:ecommerce/logic/x_status.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_checkout_button.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_item_tile.dart';
import 'package:ecommerce/ui/widgets/cart_screen/cart_total_price.dart';
import 'package:ecommerce/ui/widgets/circular_indicator.dart';
import 'package:ecommerce/ui/widgets/error_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartContent extends StatelessWidget {
  const CartContent({super.key});

  static const kCartDecoration = BoxDecoration(
      color: ThemeColors.kPrimaryTextColor,
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ));

  @override
  Widget build(BuildContext context) {
    final status = context.select<CartCubit, XStatus>((cubit) => cubit.state.status);

    final cartState = BlocProvider.of<CartCubit>(context, listen: false).state;

    switch (status) {
      case XStatus.initial:
        return Container(decoration: kCartDecoration);
      //---
      case XStatus.inProgress:
        return Container(
          decoration: kCartDecoration,
          child: const Center(child: CircularIndicator()),
        );
      //---
      case XStatus.failure:
        return Container(
          decoration: kCartDecoration,
          child: Center(child: ErrorInfo(message: cartState.errorMessage)),
        );
      //---
      case XStatus.success:
    }

    return Container(
      decoration: kCartDecoration,
      child: Column(
        children: [
          const SizedBox(width: double.infinity, height: 80),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: cartState.cart!.basket.map((item) => CartItemTile(item: item)).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Divider(color: Colors.white.withOpacity(0.25), thickness: 2),
          ),
          CartTotalPrice(
              totalPrice: cartState.cart!.total.toDouble(), delivery: cartState.cart!.delivery),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Divider(color: Colors.white.withOpacity(0.25), thickness: 1),
          ),
          CartCheckoutButton(onTap: () {})
        ],
      ),
    );
  }
}
