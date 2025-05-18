import 'package:otyv/datasource/game_datasource.dart';
import 'package:otyv/domain/entity/game.dart';
import 'package:otyv/domain/repository/repository.dart';

class RepositoryGameImp implements Repository {
  final GameDataSource gameDataSource;

  RepositoryGameImp({required this.gameDataSource});

  Future<List<Game>> getGames() async {
    return await gameDataSource.getGames();
  }
}
