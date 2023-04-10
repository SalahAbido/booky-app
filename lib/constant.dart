import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color(0xff100B20);

TextStyle bodyLargeTitle =
    const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
TextStyle bodyMediumTitle =
    const TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal);
TextStyle bodyRating =
    const TextStyle(fontWeight: FontWeight.normal, fontSize: 15);

class MedQur {
  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static Orientation orientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }
}
