class Object{
  final int id;
  final String name;
  final String description;
  bool isActive;

  Object(
    {
      required this.id,
      required this.name,
      required this.description,
      this.isActive = true,
    }
  );
}