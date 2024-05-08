import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tiktok_clone/features/home/domain/models/foryou_profile_model.dart';
import 'package:tiktok_clone/features/home/domain/models/fouryou_model.dart';

class ForyouDatasourcesNtw {
  final client = Supabase.instance.client;

  Future<List<ForYouModel>> fethFouryouData() async {
    final response = await client.from('videos').select(
          'id_user,comment,save,like,description,name,share,url',
        );

    final fourYou = response.map((e) {
      return ForYouModel.fromJson(e);
    }).toList();
    return fourYou;
  }

  Future<ForyouProfileModel> getProfileIdData({required int idUser}) async {
    final response =
        await client.from('user').select().eq('id', idUser).single();

    final objectModel = ForyouProfileModel.fromJson(response);
    return objectModel;
  }
}
