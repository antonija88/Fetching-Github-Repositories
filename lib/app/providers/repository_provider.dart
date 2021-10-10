import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ingemark_app/app/models/repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ingemark_app/app/services/repository_service.dart';
part 'repository_provider.freezed.dart';

@freezed
abstract class RepositoryState with _$RepositoryState {
  const factory RepositoryState(
      {@Default([]) List<Repository> repos,
      @Default(false) bool isLoading,
      @Default(1) int page,
      @Default(30) int limit,
      @Default(false) bool isLoadMore,
      @Default(null) Repository? repository,
      @Default(true) bool hasNextPage}) = _RepositoryState;
}

final reposProvider = StateNotifierProvider((ref) => RepositoryNotifier());

class RepositoryNotifier extends StateNotifier<RepositoryState> {
  RepositoryNotifier() : super(RepositoryState());

  Future<List<Repository>> getRepos(String q) async {
    refresh();
    state = state.copyWith(isLoading: true);
    final repos =
        await RepositoryServices().getRepos(q, state.page, state.limit);
    state = state.copyWith(isLoading: false, repos: repos);
    return repos;
  }

  addRepository(Repository repo) {
    state = state.copyWith(repository: repo);
  }

  loadMore(String q) async {
    state = state.copyWith(isLoadMore: true);
    List<Repository> fetchedRepos =
        await RepositoryServices().getRepos(q, state.page + 1, state.limit);
    state.repos.addAll(fetchedRepos);
    if (fetchedRepos.length < state.limit) {
      state = state.copyWith(hasNextPage: false);
    }
    state = state.copyWith(
        isLoadMore: false, page: state.page + 1, repository: state.repository);
  }

  refresh() async {
    state = state.copyWith(
        isLoading: false,
        repos: [],
        hasNextPage: true,
        isLoadMore: false,
        page: 1,
        limit: state.limit);
  }
}
