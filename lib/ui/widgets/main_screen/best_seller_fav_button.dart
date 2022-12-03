import 'package:ecommerce/=models=/best_seller_item.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestSellerFavButton extends StatefulWidget {
  static const size = 25.0;
  static const iconSize = 10.4;

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          width: BestSellerFavButton.size,
          height: BestSellerFavButton.size,
          decoration: BoxDecoration(
            color: ThemeColors.kSectionItemBackColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(BestSellerFavButton.size),
            ),
            boxShadow: [kDefaultBoxShadowStrong],
          ),
          child: SvgPicture.asset(
            _isSelected ? 'assets/icons/heart_filled.svg' : 'assets/icons/heart.svg',
            width: BestSellerFavButton.iconSize,
            height: BestSellerFavButton.iconSize,
            color: ThemeColors.kAccentColor,
          ),
        ),
        SizedBox(
          width: BestSellerFavButton.size,
          height: BestSellerFavButton.size,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(BestSellerFavButton.size),
              ),
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
