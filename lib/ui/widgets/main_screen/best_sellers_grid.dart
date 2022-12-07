import 'package:ecommerce/logic/best_sellers_cubit.dart';
import 'package:ecommerce/logic/x_status.dart';
import 'package:ecommerce/ui/theme.dart';
import 'package:ecommerce/ui/widgets/circular_indicator.dart';
import 'package:ecommerce/ui/widgets/error_info.dart';
import 'package:ecommerce/ui/widgets/main_screen/best_seller_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellersGrid extends StatelessWidget {
  const BestSellersGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bestSellersState = context.watch<BestSellersCubit>().state;

    switch (bestSellersState.status) {
      case XStatus.initial:
        return const SizedBox.shrink();
      //---
      case XStatus.inProgress:
        return const Center(child: CircularIndicator());
      //---
      case XStatus.failure:
        return Center(child: ErrorInfo(message: bestSellersState.errorMessage));
      //---
      case XStatus.success:
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.836,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: bestSellersState.bestSellers.length,
          itemBuilder: (context, index) {
            return BestSellerGridItem(
              item: bestSellersState.bestSellers[index],
              margin: (index % 2 == 0) ? _leftColumnItemMargins : _rightColumnItemMargins,
            );
          },
        );
    }
  }
}

//-------------
const _kGridOuterPadding = kContentPadding + 1;
const _kGridInnerPadding = kContentPadding - 2;
const _leftColumnItemMargins =
    EdgeInsets.fromLTRB(_kGridOuterPadding, 6, _kGridInnerPadding / 2, _kGridInnerPadding - 6);
const _rightColumnItemMargins =
    EdgeInsets.fromLTRB(_kGridInnerPadding / 2, 6, _kGridOuterPadding, _kGridInnerPadding - 6);
//-------------