class Mark {
  final int id;
  final int gameId;
  final String description;

  Mark({required this.id, required this.gameId, required this.description});

  factory Mark.fromJson(Map<String, dynamic> json) {
    return Mark(
      id: json['id'],
      gameId: json['game_id'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'game_id': gameId, 'description': description};
  }
}
