import 'package:ecommerce/logic/favs_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavsIndicator extends StatelessWidget {
  const FavsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final favsCount = context.watch<FavsCubit>().state.favIds.length;

    if (favsCount == 0) {
      return const SizedBox.shrink();
    }

    return Container(
      width: 15,
      height: 15,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 1),
        child: Text(
          favsCount.toString(),
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
