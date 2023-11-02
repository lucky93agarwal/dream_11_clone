import 'package:get/get.dart';

import 'local_string_english.dart';
import 'local_string_hindi.dart';

class LocalString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': LocalStringEnglish.english(),
    'ne': LocalStringHindi.hindi(),
  };
}