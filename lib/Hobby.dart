class Hobby {
  final String hobby;
  bool value;

  Hobby({required this.hobby, required this.value});

  static List<Hobby> gethobby() {
    return [
      Hobby(
        hobby: "เล่นเกม",
        value: false,
      ),
      Hobby(hobby: "นอน", value: false),
      Hobby(hobby: "กิน", value: false),
      Hobby(hobby: "ฟังเพลง", value: false),
      Hobby(hobby: "ดำน้ำ", value: false),
    ];
  }
}
