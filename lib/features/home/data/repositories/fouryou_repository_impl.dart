import 'package:tiktok_clone/features/home/data/datasource/network/foryou_datasource_ntw.dart';
import 'package:tiktok_clone/features/home/domain/models/fouryou_model.dart';
import 'package:tiktok_clone/features/home/domain/repositories/foryou_repository.dart';

class ForyouRepositoryImpl extends ForyouRepository {
  final ForyouDatasourcesNtw foryouDatasourcesNtw;

  ForyouRepositoryImpl({required this.foryouDatasourcesNtw});

  @override
  Future<List<ForYouModel>> fetchAllForyou() {
    final response = foryouDatasourcesNtw.fethFouryouData();
    return response;
  }
}