import 'package:tiktok_clone/features/home/domain/models/foryou_profile_model.dart';
import 'package:tiktok_clone/features/home/domain/models/interaction_model.dart';

abstract class ProfileRepository {
  Future<ForyouProfileModel> fetchByIdProfile({required int id});
  Future<InteractionModel> fetInteraction({required idUser});
}
