import 'package:ecommerce/logic/cart_cubit.dart';
import 'package:ecommerce/ui/screens/cart_screen.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/main_screen/cart_indicator.dart';
import 'package:ecommerce/ui/widgets/main_screen/favs_indicator.dart';
import 'package:ecommerce/ui/widgets/main_screen/nav_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BottomNavPanel extends StatelessWidget {
  const BottomNavPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: ThemeColors.kPrimaryTextColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.66,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                SizedBox(
                  height: 8,
                  width: 8,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: ThemeColors.kNavBarItemColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
                SizedBox(width: 7),
                Text(
                  'Explorer',
                  style: TextStyle(
                      color: ThemeColors.kNavBarItemColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(width: 12),
            Stack(children: [
              NavIconButton(
                iconName: 'shop',
                onTap: () {
                  context.read<CartCubit>().getCart();
                  context.pushNamed(CartScreen.name);
                },
              ),
              const Positioned(
                top: 5,
                right: 1,
                child: CartIndicator(),
              ),
            ]),
            Stack(children: [
              NavIconButton(iconName: 'favorites', onTap: () {}),
              const Positioned(
                top: 5,
                right: 1,
                child: FavsIndicator(),
              ),
            ]),
            NavIconButton(iconName: 'user', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
