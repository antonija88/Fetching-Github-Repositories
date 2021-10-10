import 'package:ingemark_app/app/models/repository.dart';

abstract class ReposRepository {
  Future<List<Repository>> getRepos(String _q, int _page, int _limit);
}
