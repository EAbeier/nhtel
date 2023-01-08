import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/reservation.dart';

class BedroomQuantity extends StatefulWidget {
  final Reservation reservation;
  const BedroomQuantity({
    Key? key,
    required this.reservation,
  }) : super(key: key);

  @override
  State<BedroomQuantity> createState() => _BedroomQuantityState();
}

class _BedroomQuantityState extends State<BedroomQuantity> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Quartos:",
          style: Theme.of(context).textTheme.headline3,
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      widget.reservation.reduceNumberOfRooms();
                    });
                  },
                  child: Icon(
                    Icons.remove_circle_outline_rounded,
                    color: primaryColor,
                  ),
                ),
              ),
              Text(
                widget.reservation.numberOfRooms().toString(),
                style: TextStyle(
                  color: primaryColor,
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      widget.reservation.addNumberOfRooms();
                    });
                  },
                  child: Icon(
                    Icons.add_circle_outline_rounded,
                    color: primaryColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
