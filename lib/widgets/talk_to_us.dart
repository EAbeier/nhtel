import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:nhtelwebsite/constants/constants.dart';
import 'package:nhtelwebsite/helpers/enums/enum_icons.dart';
import 'package:nhtelwebsite/helpers/style.dart';

class TalkToUs extends StatelessWidget {
  const TalkToUs({super.key});

  @override
  Widget build(BuildContext context) {
    var talkToUs = 'https://wa.me/555130660104';
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => html.window.open(talkToUs, "_blank"),
        child: SizedBox(
          width: 165,
          height: 40,
          child: Stack(
            children: [
              Container(
                width: 150,
                height: 35,
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: whatsAppColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TALKTOUS,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(EnumIcons.whatsApp.uri)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
