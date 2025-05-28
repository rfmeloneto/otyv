import 'package:otyv/datasource/client/client.dart';
import 'package:otyv/datasource/datasource.dart';
import 'package:otyv/domain/entity/game.dart';
import 'package:otyv/main.dart' show supabase;

class GameDataSource implements DataSource {
  final Client client;

  GameDataSource(this.client);

  Future<List<Game>> getGames() async {
    try {
      final data = await supabase.from('games').select('*');
      return Game.gameListFromJson(data);
    } catch (error) {
      throw Exception('Erro ao buscar jogos: $error');
    }
  }

  Future<void> newGame() async {
    try {
      await supabase.from('games').insert({
        'current_number': 1,
        'current_letter': 'a',
      });
    } catch (e) {
      print('Uma exceção ocorreu: $e');
      throw Exception('Erro ao inserir dados: $e');
    }
  }

  Future<void> deleteGame(int id) async {
    try {
      await supabase.from('games').delete().eq('id', id);
    } catch (e) {
      print('Uma exceção ocorreu: $e');
      throw Exception('Erro ao deletar dados: $e');
    }
  }
}
