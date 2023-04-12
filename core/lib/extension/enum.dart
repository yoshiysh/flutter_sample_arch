import 'package:basic_utils/basic_utils.dart';

extension EnumExt on Enum {
  String get nameLowerSnake => StringUtils.camelCaseToLowerUnderscore(name);
}
