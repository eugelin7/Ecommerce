import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/logic/hot_sales_cubit.dart';
import 'package:ecommerce/logic/x_status.dart';
import 'package:ecommerce/ui/widgets/circular_indicator.dart';
import 'package:ecommerce/ui/widgets/error_info.dart';
import 'package:ecommerce/ui/widgets/main_screen/carousel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotSalesSlider extends StatelessWidget {
  const HotSalesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final hotSalesState = context.watch<HotSalesCubit>().state;

    Widget contentWidget;

    switch (hotSalesState.status) {
      case XStatus.initial:
        contentWidget = const SizedBox.shrink();
        break;
      //---
      case XStatus.inProgress:
        contentWidget = const Center(child: CircularIndicator());
        break;
      //---
      case XStatus.failure:
        contentWidget = Center(child: ErrorInfo(message: hotSalesState.errorMessage));
        break;
      //---
      case XStatus.success:
        contentWidget = CarouselSlider(
          options: CarouselOptions(
            height: 183,
            initialPage: 0,
            viewportFraction: 1.0,
          ),
          items: hotSalesState.hotSales.map((item) => CarouselItem(item: item)).toList(),
        );
    }

    return SizedBox(
      height: 183,
      child: contentWidget,
    );
  }
}
