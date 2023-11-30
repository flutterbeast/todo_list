import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'customColors.dart';

class Heading1 extends StatelessWidget {
  final String txt;
  final double h1Size;
  final Color h1Color;
  final FontWeight h1width;

  Heading1({
    this.txt = 'default',
    this.h1Size = 32,
    this.h1Color = Colors.white,
    this.h1width = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: GoogleFonts.lato(
        fontWeight: h1width,
        fontSize: h1Size,
        color: h1Color,
      ),
    );
  }
}

class Heading2 extends StatelessWidget {
  final String h2txt;
  final double h2Size;
  final Color h2Color;
  final FontWeight h2width;

  Heading2({
    this.h2txt = 'sub heading',
    this.h2Size = 16,
    this.h2Color = Colors.white,
    this.h2width = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      h2txt,
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        fontWeight: h2width,
        fontSize: h2Size,
        color: h2Color,
      ),
    );
  }
}

class txtbtn extends StatelessWidget {
  final String btntxt;
  final double btntxtSize;
  final Color txtColor;
  final FontWeight textweight;
  final VoidCallback taped;

  txtbtn({
    this.btntxt = 'Text Button',
    this.btntxtSize = 16,
    this.txtColor = Colors.white,
    this.textweight = FontWeight.normal,
    required this.taped,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: taped,
      child: Text(
        btntxt,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          fontWeight: textweight,
          fontSize: btntxtSize,
          color: txtColor,
        ),
      ),
    );
  }
}

class appButton extends StatelessWidget {
  final String btnlabel;
  final double btntxtSize;
  final Color labelColor;
  final FontWeight textweight;
  final double btnHeight;
  final double btnWidth;
  final VoidCallback typed;

  appButton({
    this.btnlabel = 'Text Button',
    this.btntxtSize = 16,
    this.labelColor = Colors.white,
    this.textweight = FontWeight.normal,
    this.btnHeight = 45,
    this.btnWidth = 75,
    required this.typed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: typed,
      child: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.btnColor,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.blueGrey.withOpacity(0.9),
          //     spreadRadius: 3,
          //     offset: Offset(0, 3),
          //     blurRadius: 15,
          //   )
          // ],
        ),
        child: Text(
          btnlabel,
          style: GoogleFonts.lato(
            color: labelColor,
            fontWeight: textweight,
            fontSize: btntxtSize,
          ),
        ),
      ),
    );
  }
}
