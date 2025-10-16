import 'package:mini_nft_marketplace/core/resources/assets_value_manager.dart';
import 'package:mini_nft_marketplace/core/resources/strings_value_manager.dart';
import 'package:mini_nft_marketplace/feature/models/category_model.dart';

class Constants {
  static List<CategoryModel> categoryList = [
    CategoryModel(
        image: ImagesValueManager.vAMusicImage,
        title: StringsValueManager.vHomePageCategoryArt),
    CategoryModel(
        image: ImagesValueManager.vAArtImage,
        title: StringsValueManager.vHomePageCategoryArt),
    CategoryModel(
        image: ImagesValueManager.vAVirtualWorldsImage,
        title: StringsValueManager.vHomePageCategoryArt),
  ];
}
