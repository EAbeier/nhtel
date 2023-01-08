import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/message_model.dart';
import 'package:nhtelwebsite/models/reservation.dart';
import 'package:nhtelwebsite/widgets/bedroom_quantity.dart';
import 'package:nhtelwebsite/widgets/check_in_date_picker.dart';
import 'package:nhtelwebsite/widgets/check_out_date_picker.dart';
import 'package:nhtelwebsite/widgets/people_quantity.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class PopUpReservation {
  void makeReservation(BuildContext ctx, Reservation reservation) {
    showDialog(
      context: ctx,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: cardColor,
          title: Text(
            "Fazer Reservas",
            style: Theme.of(ctx).textTheme.subtitle1,
          ),
          content: SizedBox(
            height: 200,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckInDatePicker(reservation: reservation),
                CheckOutDatePicker(reservation: reservation),
                BedroomQuantity(reservation: reservation),
                PeopleQuantity(reservation: reservation),
              ],
            ),
          ),
          actions: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: InkWell(
                onTap: () {
                  Navigator.of(ctx).pop();
                },
                child: Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Cancelar",
                        style: Theme.of(ctx).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: InkWell(
                onTap: () {
                  var text = Message.buildMessage(reservation);
                  html.window.open(text, "_blank");
                  Navigator.of(ctx).pop();
                },
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
                        style: Theme.of(ctx).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
