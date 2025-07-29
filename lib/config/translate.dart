import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {'title': 'Hello', 'loading': 'Loading', 'click': 'Click'},
    'bn_BD': {'title': 'হ্যালো', 'loading': 'লোড হচ্ছে', 'click': 'ক্লিক'},
  };
}
