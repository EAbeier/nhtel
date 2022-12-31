import 'package:nhtelwebsite/widgets/check_in_date_picker.dart';

class Reservation {
  int _numberOfPeople = 1;
  int _numberOfRooms = 1;
  DateTime _checkInDate = DateTime.now();
  DateTime _checkOutDate = DateTime.now().add(const Duration(days: 1));

  numberOfPeople() {
    return _numberOfPeople;
  }

  numberOfRooms() {
    return _numberOfRooms;
  }

  checkInDate() {
    return _checkInDate;
  }

  checkOutDate() {
    return _checkOutDate;
  }

  reduceNumberOfPeople() {
    if (_numberOfPeople == 1) {
      return;
    }
    _numberOfPeople -= 1;
  }

  addNumberOfPeople() {
    _numberOfPeople += 1;
  }

  reduceNumberOfRooms() {
    if (_numberOfRooms == 1) {
      return;
    }
    _numberOfRooms -= 1;
  }

  addNumberOfRooms() {
    _numberOfRooms += 1;
  }

  setCheckInDate(DateTime date) {
    _checkInDate = date;
  }

  setCheckOutDate(DateTime date) {
    _checkOutDate = date;
  }
}
