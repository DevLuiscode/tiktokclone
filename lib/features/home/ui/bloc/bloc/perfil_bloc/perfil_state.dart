part of 'perfil_bloc.dart';

enum PerfilStatus { initial, loading, sucess, error }

class PerfilState extends Equatable {
  final ForyouProfileModel foryouProfileModel;
  final PerfilStatus perfilStatus;
  const PerfilState({
    required this.foryouProfileModel,
    this.perfilStatus = PerfilStatus.initial,
  });

  PerfilState copyWith({
    ForyouProfileModel? foryouProfileModel,
    PerfilStatus? perfilStatus,
  }) =>
      PerfilState(
        foryouProfileModel: foryouProfileModel ?? this.foryouProfileModel,
        perfilStatus: perfilStatus ?? this.perfilStatus,
      );

  @override
  List<Object> get props => [foryouProfileModel, perfilStatus];
}
