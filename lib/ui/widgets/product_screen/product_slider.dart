import 'package:ecommerce/logic/product_cubit.dart';
import 'package:ecommerce/logic/x_status.dart';
import 'package:ecommerce/ui/widgets/circular_indicator.dart';
import 'package:ecommerce/ui/widgets/error_info.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductSlider extends StatelessWidget {
  const ProductSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final productState = context.watch<ProductCubit>().state;

    Widget contentWidget;

    switch (productState.status) {
      case XStatus.initial:
        contentWidget = const SizedBox.shrink();
        break;
      //---
      case XStatus.inProgress:
        contentWidget = const Center(child: CircularIndicator());
        break;
      //---
      case XStatus.failure:
        contentWidget = Center(child: ErrorInfo(message: productState.errorMessage));
        break;
      //---
      case XStatus.success:
        contentWidget = ProductCarousel(images: productState.product!.images);
    }

    return SizedBox(
      height: 350,
      child: contentWidget,
    );
  }
}
