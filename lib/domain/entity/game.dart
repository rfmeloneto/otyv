class Game {
  final int id;
  final int currentNumber;
  final String currentLetter;

  Game({
    required this.id,
    required this.currentNumber,
    required this.currentLetter,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      currentNumber: json['current_number'],
      currentLetter: json['current_letter'],
    );
  }

  static List<Game> gameListFromJson(List<dynamic> json) {
    List<Game> games = [];
    for (var item in json) {
      games.add(Game.fromJson(item));
    }
    return games;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'current_number': currentNumber,
      'current_letter': currentLetter,
    };
  }
}
