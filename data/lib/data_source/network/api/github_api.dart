import 'package:core/extension/enum.dart';
import 'package:data/data_source/network/api/base_api.dart';
import 'package:domain/model/query/order_type.dart';
import 'package:domain/model/query/query.dart';
import 'package:domain/model/query/sort_type.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GithubApi extends BaseApi {
  @override
  String get baseUrl => 'api.github.com';

  Uri user(String userName) => buildUri('/users/$userName');

  Uri search(Query query) => buildUri(
        '/search/repositories',
        queryParameters: query.buildParams(),
      );
}

extension QueryExt on Query {
  Map<String, dynamic> buildParams() {
    List<String> params = [];
    SortType? sort = sortType;
    if (sort != null) {
      params.add('sort:${sort.nameLowerSnake}');
    }

    String? lang = language;
    if (lang != null) {
      params.add('language:$lang');
    }

    if (hasStars) {
      params.add('stars:>=0');
    }

    String joinedParams = params.join('+');
    String query = joinedParams;
    String? word = keyword;
    if (word != null && word.isNotEmpty) {
      query = '$word+$joinedParams';
    }

    return {
      'order': (orderType ?? OrderType.asc).name,
      'per_page': perPage.toString(),
      'page': page.toString(),
      'q': query,
    };
  }
}
