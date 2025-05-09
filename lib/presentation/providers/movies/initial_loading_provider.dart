import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/presentation/providers/providers.dart';

final initialLoadindProvider = Provider<bool>((ref) {
  final nowPlayingMoviesIsEmpty = ref.watch(nowPlayingMoviesProvider).isEmpty;
  final popularMoviesIsEmpty = ref.watch(popularMoviesProvider).isEmpty;
  final topRatedMoviesIsEmpty = ref.watch(topRatedMoviesProvider).isEmpty;
  final upcomingMoviesIsEmpty = ref.watch(upcomingMoviesProvider).isEmpty;

  return nowPlayingMoviesIsEmpty || popularMoviesIsEmpty || topRatedMoviesIsEmpty || upcomingMoviesIsEmpty;
});
