import 'package:mini_nft_marketplace/core/resources/assets_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/models/category_model.dart';
import 'package:mini_nft_marketplace/feature/models/other_section_model.dart';
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
  static List<OtherSectionModel> topSellerList = [
    OtherSectionModel(ImagesValueManager.vATS_1, StringsValueManager.vHPTs_1,
        StringsValueManager.vHPTs_1_2, 0.906, 200),
    OtherSectionModel(ImagesValueManager.vATS_2, StringsValueManager.vHPTs_2,
        StringsValueManager.vHPTs_2_2, 0.018, 200),
    OtherSectionModel(ImagesValueManager.vATS_3, StringsValueManager.vHPTs_3,
        StringsValueManager.vHPTs_3_2, 0.26, 200),
  ];
  static List<OtherSectionModel> hotItemsList = [
    OtherSectionModel(ImagesValueManager.vAH_1, StringsValueManager.vHPH_1,
        StringsValueManager.vHPH_1_2, 0.906, 200),
    OtherSectionModel(ImagesValueManager.vAH_2, StringsValueManager.vHPH_2,
        StringsValueManager.vHPH_2_2, 0.018, 200),
    OtherSectionModel(ImagesValueManager.vAH_3, StringsValueManager.vHPH_3,
        StringsValueManager.vHPH_3_2, 0.26, 200),
    OtherSectionModel(ImagesValueManager.vAH_4, StringsValueManager.vHPH_4,
        StringsValueManager.vHPH_4_2, 0.26, 200),
  ];
}
