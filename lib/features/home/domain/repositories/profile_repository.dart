import 'package:tiktok_clone/features/home/domain/models/foryou_profile_model.dart';

abstract class ProfileRepository {
  Future<ForyouProfileModel> fetchByIdProfile({required int id});
}
