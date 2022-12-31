import 'package:intl/intl.dart';
import 'package:nhtelwebsite/models/reservation.dart';

class Message {
  static String buildMessage(Reservation reservation) {
    String baseText = 'https://wa.me/555130660104?text=';
    var hour = DateTime.now().hour;
    String salutation = 'Boa%20noite!%20';
    String peopleOrPerson = 'pessoa';
    String roomOrRooms = 'quarto';

    if (hour < 12) {
      salutation = 'Bom%20dia!%20';
    } else if (hour > 12 && hour < 6) {
      salutation = 'Boa%20tarde!%20';
    }

    if (reservation.numberOfRooms() > 1) {
      roomOrRooms = 'quartos';
    }

    if (reservation.numberOfPeople() > 1) {
      peopleOrPerson = 'pessoas';
    }

    baseText += salutation;
    baseText +=
        'Gostaria%20de%20reservar%20${reservation.numberOfRooms()}%20${roomOrRooms}%20para%20${reservation.numberOfPeople()}%20${peopleOrPerson}%20para%20o%20período%20de%20${DateFormat('dd/MM/y').format(reservation.checkInDate())}%20a%20${DateFormat('dd/MM/y').format(reservation.checkOutDate())}';
    return baseText;
  }
}
