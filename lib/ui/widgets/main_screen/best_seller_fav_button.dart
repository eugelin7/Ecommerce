import 'package:ecommerce/=models=/best_seller_item.dart';
import 'package:ecommerce/logic/favs_cubit.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestSellerFavButton extends StatefulWidget {
  final BestSellerItem item;

  const BestSellerFavButton({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<BestSellerFavButton> createState() => _BestSellerFavButtonState();
}

class _BestSellerFavButtonState extends State<BestSellerFavButton> {
  bool _isSelected = false;

  static const size = 25.0;
  static const iconSize = 10.4;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: ThemeColors.kSectionItemBackColor,
            borderRadius: const BorderRadius.all(Radius.circular(size)),
            boxShadow: [kDefaultBoxShadowStrong],
          ),
          child: SvgPicture.asset(
            _isSelected ? 'assets/icons/heart_filled.svg' : 'assets/icons/heart.svg',
            width: iconSize,
            height: iconSize,
            color: ThemeColors.kAccentColor,
          ),
        ),
        SizedBox(
          width: size,
          height: size,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(size)),
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
                if (_isSelected) {
                  context.read<FavsCubit>().addProductId(widget.item.id);
                } else {
                  context.read<FavsCubit>().removeProductId(widget.item.id);
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
