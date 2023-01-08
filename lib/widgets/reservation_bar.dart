import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/message_model.dart';
import 'package:nhtelwebsite/models/reservation.dart';
import 'package:nhtelwebsite/widgets/bedroom_quantity.dart';
import 'package:nhtelwebsite/widgets/check_in_date_picker.dart';
import 'package:nhtelwebsite/widgets/check_out_date_picker.dart';
import 'package:nhtelwebsite/widgets/people_quantity.dart';
import 'package:nhtelwebsite/widgets/reservation_button.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class ReservationBar extends StatelessWidget {
  const ReservationBar({super.key});
  @override
  Widget build(BuildContext context) {
    var reservation = Reservation();
    var screenSize = MediaQuery.of(context).size;

    void makeReservation(context, reservation) {
      var text = Message.buildMessage(reservation);
      html.window.open(text, "_blank");
    }

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
            ReservationButton(
              makeReservation: makeReservation,
              reservation: reservation,
              ctx: context,
            )
          ],
        ),
      ),
    );
  }
}
