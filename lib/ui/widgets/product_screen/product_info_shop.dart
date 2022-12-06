import 'package:ecommerce/=models=/product.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_info_capacity.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_info_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductInfoShop extends StatelessWidget {
  final Product product;

  const ProductInfoShop({super.key, required this.product});

  static const kTextStyle = TextStyle(
    fontFamily: 'MarkPro',
    color: ThemeColors.kProductInfoColor,
    fontSize: 11,
  );

  Widget _svgIcon({required String iconName, required double w, required double h}) => Container(
        height: 30,
        alignment: Alignment.center,
        child: SvgPicture.asset('assets/icons/$iconName.svg',
            width: w, height: h, color: ThemeColors.kProductInfoColor),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: double.infinity, height: 32),
        SizedBox(
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _svgIcon(iconName: 'cpu', w: 28, h: 28),
                    Text(product.cpu,
                        maxLines: 1, overflow: TextOverflow.ellipsis, style: kTextStyle)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _svgIcon(iconName: 'camera', w: 28, h: 22),
                    Text(product.camera,
                        maxLines: 1, overflow: TextOverflow.ellipsis, style: kTextStyle)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Opacity(opacity: 0.9, child: _svgIcon(iconName: 'ssd', w: 28, h: 19)),
                    Text(product.ssd,
                        maxLines: 1, overflow: TextOverflow.ellipsis, style: kTextStyle)
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _svgIcon(iconName: 'sd', w: 19, h: 22),
                    Text(product.sd,
                        maxLines: 1, overflow: TextOverflow.ellipsis, style: kTextStyle)
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: const [
            SizedBox(width: 16),
            Text(
              'Select color and capacity',
              style: TextStyle(
                fontFamily: 'MarkPro',
                color: ThemeColors.kPrimaryTextColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: -0.4,
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        FittedBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductInfoColor(colors: product.color),
              const SizedBox(width: 62),
              ProductInfoCapacity(capacities: product.capacity),
            ],
          ),
        )
      ],
    );
  }
}
