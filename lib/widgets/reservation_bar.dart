import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/reservation.dart';
import 'package:nhtelwebsite/widgets/bedroom_quantity.dart';
import 'package:nhtelwebsite/widgets/check_in_date_picker.dart';
import 'package:nhtelwebsite/widgets/check_out_date_picker.dart';
import 'package:nhtelwebsite/widgets/people_quantity.dart';
import 'package:nhtelwebsite/widgets/reservation_button.dart';

class ReservationBar extends StatelessWidget {
  const ReservationBar({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var reservation = Reservation();
    return Container(
      color: primaryColor.withOpacity(0.6),
      width: screenSize.width,
      height: 70,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CheckInDatePicker(reservation: reservation),
            CheckOutDatePicker(reservation: reservation),
            BedroomQuantity(reservation: reservation),
            PeopleQuantity(reservation: reservation),
            ReservationButton(reservation: reservation)
          ],
        ),
      ),
    );
  }
}
