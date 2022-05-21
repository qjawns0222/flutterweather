import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Model {
  Widget getWeatherIcon(int condition) {
    if (condition < 300) {
      return SvgPicture.asset(
        'svg/climacon-cloud_lightning.svg',
        color: Colors.black87,
      );
    } else if (condition < 600) {
      return SvgPicture.asset(
        'svg/climacon-cloud_snow_alt.svg',
        color: Colors.black87,
      );
    } else if (condition < 800) {
      return SvgPicture.asset(
        'svg/climacon-sun.svg',
        color: Colors.black87,
      );
    } else {
      return SvgPicture.asset(
        'svg/climacon-cloud_sun.svg',
        color: Colors.black87,
      );
    }
  }

  Widget getAQIIcon(int condition) {
    if (condition == 1) {
      return Image.asset(
        'image/good.png',
        width: 37.0,
        height: 35.0,
      );
    } else if (condition == 2) {
      return Image.asset(
        'image/fair.png',
        width: 37.0,
        height: 35.0,
      );
    } else if (condition == 3) {
      return Image.asset(
        'image/moderate.png',
        width: 37.0,
        height: 35.0,
      );
    }
    else if (condition == 4) {
      return Image.asset(
        'image/poor.png',
        width: 37.0,
        height: 35.0,
      );
    } else {
      return Image.asset(
        'image/bad.png',
        width: 37.0,
        height: 35.0,
      );
    }
  }

  Widget getAQIString(int condition) {
    if (condition == 1) {
      return Text(
        '"매우 좋음"',
        style: GoogleFonts.lato(
          fontSize: 16.0,
          color: Colors.black,
        ),
      );
    } else if (condition == 2) {
      return Text(
        '"좋음"',
        style: GoogleFonts.lato(
          fontSize: 16.0,
          color: Colors.black,
        ),
      );
    } else if (condition == 3) {
      return Text(
        '"보통"',
        style: GoogleFonts.lato(
          fontSize: 16.0,
          color: Colors.black,
        ),
      );
    }
    else if (condition == 4) {
      return Text(
        '"나쁨"',
        style: GoogleFonts.lato(
          fontSize: 16.0,
          color: Colors.black,
        ),
      );
    } else
      return Text(
        '"매우 나쁨"',
        style: GoogleFonts.lato(
          fontSize: 16.0,
          color: Colors.black,
        ),
      );
  }
}
