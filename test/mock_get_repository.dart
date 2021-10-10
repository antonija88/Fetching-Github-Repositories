import 'package:ingemark_app/app/models/repository.dart';
import 'package:ingemark_app/app/repositories/repos_repository.dart';

class MockAPI extends ReposRepository {
  @override
  Future<List<Repository>> getRepos(String _q, int _page, int _limit) {
    return Future.value([
      Repository(
          repoName: 'ChatApp',
          lastUpdateTime: '11/10/2020',
          ownerName: 'Sandy Moore',
          description: 'Interesting chat app'),
      Repository(
          repoName: 'OrderApp',
          lastUpdateTime: '12/10/2020',
          ownerName: 'Ian Help',
          description: 'Interesting order app'),
      Repository(
          repoName: 'CoolApp',
          lastUpdateTime: '13/10/2020',
          ownerName: 'Sam Worthy',
          description: 'Interesting app'),
      Repository(
          repoName: 'ExchangeApp',
          lastUpdateTime: '14/10/2020',
          ownerName: 'Keira Knighty',
          description: 'Interesting exchange app'),
    ]);
  }
}
