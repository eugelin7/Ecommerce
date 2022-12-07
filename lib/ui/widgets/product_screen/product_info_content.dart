import 'package:ecommerce/logic/product_cubit.dart';
import 'package:ecommerce/logic/x_status.dart';
import 'package:ecommerce/ui/widgets/circular_indicator.dart';
import 'package:ecommerce/ui/widgets/error_info.dart';
import 'package:ecommerce/ui/widgets/product_screen/product_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductInfoContent extends StatelessWidget {
  const ProductInfoContent({super.key});

  @override
  Widget build(BuildContext context) {
    final productState = context.watch<ProductCubit>().state;

    // if (productState.status == XStatus.initial) {
    //   BlocProvider.of<ProductCubit>(context, listen: false).getProduct();
    //   return const SizedBox.shrink();
    // }

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
        contentWidget = ProductInfo(product: productState.product!);
    }

    return SizedBox(
      height: 450,
      child: contentWidget,
    );
  }
}
