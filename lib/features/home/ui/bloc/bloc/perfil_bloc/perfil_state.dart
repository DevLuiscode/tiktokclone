part of 'perfil_bloc.dart';

enum PerfilStatus { initial, loading, sucess, error }

class PerfilState extends Equatable {
  final ForyouProfileModel foryouProfileModel;
  final PerfilStatus perfilStatus;
  final InteractionModel interactionModel;
  const PerfilState({
    required this.foryouProfileModel,
    required this.interactionModel,
    this.perfilStatus = PerfilStatus.initial,
  });

  PerfilState copyWith({
    ForyouProfileModel? foryouProfileModel,
    PerfilStatus? perfilStatus,
    InteractionModel? interactionModel,
  }) =>
      PerfilState(
        foryouProfileModel: foryouProfileModel ?? this.foryouProfileModel,
        perfilStatus: perfilStatus ?? this.perfilStatus,
        interactionModel: interactionModel ?? this.interactionModel,
      );

  @override
  List<Object> get props =>
      [foryouProfileModel, perfilStatus, interactionModel];
}
