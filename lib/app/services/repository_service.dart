import 'package:dio/dio.dart';
import 'package:ingemark_app/app/models/repository.dart';
import 'package:ingemark_app/app/repositories/repos_repository.dart';
import 'package:ingemark_app/app/services/http_service.dart';

class RepositoryServices extends ReposRepository {
  late HTTPServices _httpServices;

  RepositoryServices() {
    _httpServices = HTTPServices();
  }

  @override
  Future<List<Repository>> getRepos(String _q, int _page, int _limit) async {
    Response? response = await _httpServices.get(
        "/repositories?q=$_q&sort=updated&order=desc&page=$_page&per_page=$_limit");
    if (response!.statusCode == 200) {
      return response.data['items']
          .map<Repository>((model) => Repository.fromJson(model))
          .toList();
    } else {
      throw Exception("Failed to fetch repositories");
    }
  }
}
