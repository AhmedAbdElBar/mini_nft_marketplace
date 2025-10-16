import 'package:mini_nft_marketplace/core/resources/assets_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/models/category_model.dart';
import 'package:mini_nft_marketplace/feature/models/trending_model.dart';

class Constants {
  static List<CategoryModel> categoryList = [
    CategoryModel(
        image: ImagesValueManager.vAMusicImage,
        title: StringsValueManager.vHPCArt),
    CategoryModel(
        image: ImagesValueManager.vAArtImage,
        title: StringsValueManager.vHPCArt),
    CategoryModel(
        image: ImagesValueManager.vAVirtualWorldsImage,
        title: StringsValueManager.vHPCArt),
  ];
  static List<TrendingModel> trendingList = [
    TrendingModel(
        image: ImagesValueManager.vATt_1,
        count: 200,
        title: StringsValueManager.vHPT3DArt),
    TrendingModel(
        image: "assets/images/t (2).png",
        count: 200,
        title: StringsValueManager.vHPTAbstract),
    TrendingModel(
        image: ImagesValueManager.vATt_3,
        count: 200,
        title: StringsValueManager.vHPTPortrait),
  ];
}
