part of 'perfil_bloc.dart';

class PerfilEvent extends Equatable {
  const PerfilEvent();

  @override
  List<Object> get props => [];
}

class FetchByIdEvent extends PerfilEvent {
  final int id;
  const FetchByIdEvent({required this.id});
}

class FetchInteractionEvent extends PerfilEvent {
  final int id;
  const FetchInteractionEvent({required this.id});
}
