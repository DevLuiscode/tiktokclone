part of 'foryou_bloc.dart';

enum ForyouStatus { initial, loading, sucess, error }

class ForyouState extends Equatable {
  final List<ForYouModel> foryouList;
  final ForyouStatus status;
  const ForyouState({
    required this.foryouList,
    required this.status,
  });

  ForyouState copyWith({
    List<ForYouModel>? foryouList,
    ForyouStatus? status,
  }) =>
      ForyouState(
        foryouList: foryouList ?? this.foryouList,
        status: status ?? this.status,
      );

  @override
  List<Object> get props => [foryouList, status];
}
