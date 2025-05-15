
class Prompt {
  final int id;
  final int number;
  final String content;
  final String letter;

  Prompt(
    {
      required this.id,
      required this.number,
      required this.content,
      required this.letter,
    }
  );

  factory Prompt.fromJson(Map<String, dynamic> json) {
  return Prompt(
    id: json['id'],
    number: json['prompt_number'],
    content: json['prompt_content'],
    letter: json['prompt_letter'],
  );
}
}


