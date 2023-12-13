class Character {
  final int charId;
  final String name;
  final String nickName;
  final String image;
  final List<dynamic> jobs;
  final String statusIfDeadOrAlive;
  final List<dynamic> appearanceOfSeasons;
  final String acotrName;
  final String categoryForToeSeries;
  final List<dynamic> betterCallSaulAppearance;

  Character({
    required this.charId,
    required this.name,
    required this.nickName,
    required this.image,
    required this.jobs,
    required this.statusIfDeadOrAlive,
    required this.appearanceOfSeasons,
    required this.acotrName,
    required this.categoryForToeSeries,
    required this.betterCallSaulAppearance,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    final charId = json["char_id"];
    final name = json["name"];
    final nickName = json["char_id "];
    final image = json["img"];
    final jobs = json["occupation"];
    final statusIfDeadOrAlive = json["status"];
    final appearanceOfSeasons = json["appearance"];
    final acotrName = json["portrayed"];
    final categoryForToeSeries = json["category"];
    final betterCallSaulAppearance = json["better_call_saul_appearance"];
    return Character(
      charId: charId,
      name: name,
      nickName: nickName,
      image: image,
      jobs: jobs,
      statusIfDeadOrAlive: statusIfDeadOrAlive,
      appearanceOfSeasons: appearanceOfSeasons,
      acotrName: acotrName,
      categoryForToeSeries: categoryForToeSeries,
      betterCallSaulAppearance: betterCallSaulAppearance,
    );
  }
}
