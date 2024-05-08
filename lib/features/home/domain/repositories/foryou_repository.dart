import 'package:tiktok_clone/features/home/domain/models/fouryou_model.dart';

abstract class ForyouRepository {
  Future<List<ForYouModel>> fetchAllForyou();
}
