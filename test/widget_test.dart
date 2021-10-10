import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ingemark_app/app/models/repository.dart';
import 'package:ingemark_app/app/repositories/repos_repository.dart';
import 'mock_get_repository.dart';

import 'package:ingemark_app/main.dart';

void main() {
  MockAPI mockAPI = MockAPI();

  group('Testing Fetching Repositories', () {
    test('getRepos', () async {
      List<Repository> repository = await mockAPI.getRepos("zagor", 3, 3);
      expect(repository.length, 4);
    });

    test('Third repository name is?', () async {
      List<Repository> repositories = await mockAPI.getRepos("zagor", 3, 3);
      Repository thirdRepoName = repositories[2];
      expect(thirdRepoName.repoName, "CoolApp");
    });
  });
}
