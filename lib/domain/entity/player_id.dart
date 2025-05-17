class Player {
  final int id;
  final int gameId;
  final String name;
  final String description;

  Player({
    required this.id,
    required this.gameId,
    required this.name,
    required this.description,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      gameId: json['game_id'],
      name: json['name'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'game_id': gameId,
      'name': name,
      'description': description,
    };
  }
}
