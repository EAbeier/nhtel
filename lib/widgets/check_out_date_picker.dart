import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nhtelwebsite/helpers/style.dart';
import 'package:nhtelwebsite/models/reservation.dart';

class CheckOutDatePicker extends StatefulWidget {
  final Reservation reservation;
  const CheckOutDatePicker({
    Key? key,
    required this.reservation,
  }) : super(key: key);

  @override
  State<CheckOutDatePicker> createState() => _CheckOutDatePickerState();
}

class _CheckOutDatePickerState extends State<CheckOutDatePicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Saída:",
          style: Theme.of(context).textTheme.headline3,
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: 30,
          child: Row(
            children: [
              Container(
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
                  onPressed: _showCheckoutDateDatePicker,
                  child: Text(
                    DateFormat('dd/MM/y')
                        .format(widget.reservation.checkOutDate()),
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

  _showCheckoutDateDatePicker() {
    showDatePicker(
      context: context,
      initialDate: widget.reservation.checkOutDate(),
      firstDate: DateTime.now(),
      lastDate: DateTime(10000),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }

      setState(() {
        widget.reservation.setCheckOutDate(pickedDate);
      });
    });
  }
}
