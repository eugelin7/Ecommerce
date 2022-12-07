import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

//------
// State

class FavsState extends Equatable {
  final List<int> favIds;

  const FavsState({
    this.favIds = const [],
  });

  @override
  List<Object?> get props => [favIds];
}

//------
// Cubit

class FavsCubit extends Cubit<FavsState> {
  final List<int> _favIds = [];

  FavsCubit() : super(const FavsState());

  void addProductId(int id) {
    //if (!_favIds.contains(id)) {
    _favIds.add(id);
    emit(FavsState(favIds: [..._favIds]));
    //}
  }

  void removeProductId(int id) {
    //if (_favIds.contains(id)) {
    _favIds.remove(id);
    emit(FavsState(favIds: [..._favIds]));
    //}
  }
}
