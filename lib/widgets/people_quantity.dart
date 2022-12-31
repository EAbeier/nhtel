import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/reservation.dart';

class PeopleQuantity extends StatefulWidget {
  final Reservation reservation;
  const PeopleQuantity({
    Key? key,
    required this.reservation,
  }) : super(key: key);

  @override
  State<PeopleQuantity> createState() => _PeopleQuantityState();
}

class _PeopleQuantityState extends State<PeopleQuantity> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Pessoas:",
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
                      widget.reservation.reduceNumberOfPeople();
                    });
                  },
                  child: Icon(
                    Icons.remove_circle_outline_rounded,
                    color: primaryColor,
                  ),
                ),
              ),
              Text(
                widget.reservation.numberOfPeople().toString(),
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
                      widget.reservation.addNumberOfPeople();
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
