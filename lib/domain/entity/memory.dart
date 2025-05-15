class Memory{
  final int id;
  final int gameId;
  final String title;
  final String description;
  final bool isActive;

  Memory({
    required this.id,
    required this.gameId,
    required this.title,
    required this.description,
    required this.isActive,
  });

  factory Memory.fromJson(Map<String, dynamic> json) {
    return Memory(
      id: json['id'],
      gameId: json['game_id'],
      title: json['title'],
      description: json['description'],
      isActive: json['isActive'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'game_id': gameId,
      'title': title,
      'description': description,
      'isActive': isActive,
    };
  }

  }
