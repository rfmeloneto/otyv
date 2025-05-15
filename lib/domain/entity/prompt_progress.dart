class PromptProgress{
  final int id;
  final int gameId;
  final int number;
  final String letter;

  PromptProgress({
    required this.id,
    required this.gameId,
    required this.number,
    required this.letter,
  });
  
  factory PromptProgress.fromJson(Map<String, dynamic> json) {
    return PromptProgress(
      id: json['id'],
      gameId: json['game_id'],
      number: json['number'],
      letter: json['letter'],
    );
  }
  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'game_id': gameId,
      'number': number,
      'letter': letter, 
    };
  }
}
