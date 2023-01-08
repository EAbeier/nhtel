import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/reservation.dart';
import 'package:nhtelwebsite/widgets/pop_up_reservation.dart';
import 'package:nhtelwebsite/widgets/reservation_button.dart';

class MobileReservationBar extends StatelessWidget {
  const MobileReservationBar({super.key});

  @override
  Widget build(BuildContext context) {
    var reservation = Reservation();
    var popUpReservation = PopUpReservation();
    var screenSize = MediaQuery.of(context).size;
    makeReservation(context, reservation) {
      popUpReservation.makeReservation(context, reservation);
    }

    return Container(
      color: primaryColor.withOpacity(0.6),
      width: screenSize.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReservationButton(
            makeReservation: makeReservation,
            reservation: reservation,
            ctx: context,
          )
        ],
      ),
    );
  }
}
