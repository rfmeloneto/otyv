class Experience {
  final int id;
  final int memoryId;
  final String text;

  Experience({required this.id, required this.memoryId, required this.text});

  factory Experience.fromJson(Map<String, dynamic> json) {
    return Experience(
      id: json['id'],
      memoryId: json['memory_id'],
      text: json['text'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'memory_id': memoryId, 'text': text};
  }
}
