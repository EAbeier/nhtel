import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/reservation.dart';

class ReservationButton extends StatefulWidget {
  final void Function(BuildContext? context, Reservation reservation)
      makeReservation;
  final BuildContext? ctx;
  final Reservation reservation;
  const ReservationButton({
    Key? key,
    required this.reservation,
    required this.makeReservation,
    this.ctx,
  }) : super(key: key);

  @override
  State<ReservationButton> createState() => _ReservationButtonState();
}

class _ReservationButtonState extends State<ReservationButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: InkWell(
            onTap: () => widget.makeReservation(widget.ctx, widget.reservation),
            child: Container(
              height: 30,
              width: 130,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Reservar",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
