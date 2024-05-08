import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tiktok_clone/features/home/domain/models/following_model.dart';
import 'package:tiktok_clone/features/home/domain/models/foryou_profile_model.dart';
import 'package:tiktok_clone/features/home/domain/models/fouryou_model.dart';

class DatasourcesNtw {
  final client = Supabase.instance.client;

  Future<List<ForYouModel>> fethFouryouData() async {
    final response = await client.from('videos').select(
      '''
          id_user,
          comment,
          save,
          like,
          description,
          name,
          share,
          url,
          user: id_user (image_profile)
          ''',
    );

    final fourYou = response.map((e) {
      return ForYouModel.fromJson(e);
    }).toList();

    return fourYou;
  }

  Future<List<FollowingModel>> fetchAllFollowing() async {
    final response = await client.from("discover_videos").select(
      '''
          id_user,
          comment,
          save,
          like,
          description,
          title,
          share,
          url,
          user: id_user (image_profile)
      ''',
    );

    final followinModel = response.map((e) {
      return FollowingModel.fromJson(e);
    }).toList();
    return followinModel;
  }

  Future<ForyouProfileModel> getProfileIdData({required int idUser}) async {
    final response =
        await client.from('user').select().eq('id', idUser).single();

    final objectModel = ForyouProfileModel.fromJson(response);
    return objectModel;
  }
}
