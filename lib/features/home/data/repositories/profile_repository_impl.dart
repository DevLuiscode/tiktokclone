import 'package:tiktok_clone/features/home/data/datasource/network/datasource_ntw.dart';
import 'package:tiktok_clone/features/home/domain/models/foryou_profile_model.dart';
import 'package:tiktok_clone/features/home/domain/models/interaction_model.dart';
import 'package:tiktok_clone/features/home/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final DatasourcesNtw datasourcesNtw;

  ProfileRepositoryImpl({required this.datasourcesNtw});
  @override
  Future<ForyouProfileModel> fetchByIdProfile({required int id}) async {
    return datasourcesNtw.getProfileIdData(idUser: id);
  }

  @override
  Future<InteractionModel> fetInteraction({required idUser}) async {
    final response = await datasourcesNtw.fetchInteraction(idUser: idUser);
    return response;
  }
}