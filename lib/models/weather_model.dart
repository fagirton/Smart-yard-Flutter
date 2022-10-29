class User extends ListItem{
  int id;
  String firstname;
  String surname;
  String building;
  int apartment;


  User({
    required this.id,
    required this.firstname,
    required this.surname,
    required this.building,
    required this.apartment,
  });
}
class NoticeUsable extends ListItem{
  String ownerName;
  String title;
  String body;
  int id;

  NoticeUsable({
    required this.ownerName,
    required this.title,
    required this.body,
    required this.id,
  });
}

abstract class ListItem{}

class DayHeading extends ListItem{
  final DateTime dateTime;

  DayHeading({
    required this.dateTime
  });

}