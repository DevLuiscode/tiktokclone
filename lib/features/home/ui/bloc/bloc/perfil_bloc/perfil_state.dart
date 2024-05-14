part of 'perfil_bloc.dart';

enum PerfilStatus { initial, loading, sucess, error }

class PerfilState extends Equatable {
  final ForyouProfileModel foryouProfileModel;
  final PerfilStatus perfilStatus;
  final InteractionModel interactionModel;
  final List<MyVideosModel> myListVideos;
  const PerfilState({
    required this.foryouProfileModel,
    required this.interactionModel,
    this.perfilStatus = PerfilStatus.initial,
    required this.myListVideos,
  });

  PerfilState copyWith({
    ForyouProfileModel? foryouProfileModel,
    PerfilStatus? perfilStatus,
    InteractionModel? interactionModel,
    List<MyVideosModel>? myListVideos,
  }) =>
      PerfilState(
        foryouProfileModel: foryouProfileModel ?? this.foryouProfileModel,
        perfilStatus: perfilStatus ?? this.perfilStatus,
        interactionModel: interactionModel ?? this.interactionModel,
        myListVideos: myListVideos ?? this.myListVideos,
      );

  @override
  List<Object> get props =>
      [foryouProfileModel, perfilStatus, interactionModel, myListVideos];
}
