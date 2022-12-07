import 'package:bloc/bloc.dart';
import 'package:ecommerce/=models=/hot_sales_item.dart';
import 'package:ecommerce/data/i_shop_data_service.dart';
import 'package:equatable/equatable.dart';
import 'x_status.dart';

//------
// State

class HotSalesState extends Equatable {
  final XStatus status;
  final List<HotSalesItem> hotSales;
  final String? errorMessage;

  const HotSalesState({
    this.status = XStatus.initial,
    this.hotSales = const [],
    this.errorMessage,
  });

  @override
  List<Object?> get props => [status, hotSales, errorMessage];
}

//------
// Cubit

class HotSalesCubit extends Cubit<HotSalesState> {
  final IShopDataService _shopDataService;

  HotSalesCubit({required IShopDataService shopDataService})
      : _shopDataService = shopDataService,
        super(const HotSalesState());

  Future<void> getHotSales() async {
    emit(const HotSalesState(status: XStatus.inProgress));
    // TODO: remove this line later (this line is required just to check process)
    // await Future.delayed(const Duration(milliseconds: 1500));
    try {
      final hotSales = await _shopDataService.fetchHotSales();
      emit(HotSalesState(status: XStatus.success, hotSales: hotSales));
    } catch (e) {
      emit(HotSalesState(status: XStatus.failure, errorMessage: e.toString()));
    }
  }

  void toInitial() {
    emit(const HotSalesState(status: XStatus.initial));
  }
}
