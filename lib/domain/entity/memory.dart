class Memory {
  final int id;
  final int gameId;
  final int diaryId;
  final bool isActive;

  Memory({
    required this.id,
    required this.gameId,
    required this.diaryId,
    required this.isActive,
  });

  factory Memory.fromJson(Map<String, dynamic> json) {
    return Memory(
      id: json['id'],
      gameId: json['game_id'],
      diaryId: json['diary_id'],
      isActive: json['isActive'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'game_id': gameId,
      'diary_id': diaryId,
      'isActive': isActive,
    };
  }
}
