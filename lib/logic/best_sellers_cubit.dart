import 'package:bloc/bloc.dart';
import 'package:ecommerce/=models=/best_seller_item.dart';
import 'package:ecommerce/data/i_shop_data_service.dart';
import 'package:equatable/equatable.dart';
import 'x_status.dart';

//------
// State

class BestSellersState extends Equatable {
  final XStatus status;
  final List<BestSellerItem> bestSellers;
  final String? errorMessage;

  const BestSellersState({
    this.status = XStatus.initial,
    this.bestSellers = const [],
    this.errorMessage,
  });

  @override
  List<Object?> get props => [status, bestSellers, errorMessage];
}

//------
// Cubit

class BestSellersCubit extends Cubit<BestSellersState> {
  final IShopDataService _shopDataService;

  BestSellersCubit({required IShopDataService shopDataService})
      : _shopDataService = shopDataService,
        super(const BestSellersState());

  Future<void> getBestSellers() async {
    emit(const BestSellersState(status: XStatus.inProgress));
    // TODO: remove this line later (this line is required just to check process)
    // await Future.delayed(const Duration(milliseconds: 1500));
    try {
      final bestSellers = await _shopDataService.fetchBestSellers();
      emit(BestSellersState(status: XStatus.success, bestSellers: bestSellers));
    } catch (e) {
      emit(BestSellersState(status: XStatus.failure, errorMessage: e.toString()));
    }
  }

  void toInitial() {
    emit(const BestSellersState(status: XStatus.initial));
  }
}
