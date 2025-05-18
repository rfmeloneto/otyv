import 'package:flutter/material.dart';
import 'package:otyv/domain/entity/game.dart';
import 'package:otyv/infra/repository_game_imp.dart';

class SelectGameViewmodel extends ChangeNotifier {
  final RepositoryGameImp _repositoryGameImp;

  SelectGameViewmodel(this._repositoryGameImp);

  List<Game> _games = [];

  List<Game> get games => _games;

  void getGames() async {
    _games = await _repositoryGameImp.getGames();
    notifyListeners();
  }
}
