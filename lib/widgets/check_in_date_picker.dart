import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/reservation.dart';

class CheckInDatePicker extends StatefulWidget {
  final Reservation reservation;

  const CheckInDatePicker({
    Key? key,
    required this.reservation,
  }) : super(key: key);

  @override
  State<CheckInDatePicker> createState() => _CheckInDatePickerState();
}

class _CheckInDatePickerState extends State<CheckInDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Chegada:",
          style: Theme.of(context).textTheme.headline3,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        SizedBox(
          height: 30,
          child: Row(
            children: [
              Container(
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: OutlinedButton(
                  style: TextButton.styleFrom(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xff3A3A3A),
                    ),
                    textStyle: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: _showCheckInDateDatePicker,
                  child: Text(
                    DateFormat('dd/MM/y')
                        .format(widget.reservation.checkInDate()),
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  _showCheckInDateDatePicker() {
    showDatePicker(
            context: context,
            initialDate: widget.reservation.checkInDate(),
            firstDate: DateTime.now(),
            lastDate: DateTime(10000))
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }

      setState(() {
        widget.reservation.setCheckInDate(pickedDate);
        widget.reservation.setCheckOutDate(
          pickedDate.add(
            const Duration(days: 1),
          ),
        );
      });
    });
  }
}
