import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  const TextTitle(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 32,
    this.color = Colors.white,
    this.maxLines = 1,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
        color: color,
        fontFamily: 'FiraCode-Regular',
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}

class TextBody24 extends StatelessWidget {
  const TextBody24(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 24,
    this.color = Colors.white,
    this.maxLines = 1,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
        color: color,
        fontFamily: 'FiraCode-Regular',
      ),
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}

class TextBody16 extends StatelessWidget {
  const TextBody16(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16,
    this.color = Colors.white,
    this.maxLines = 1,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
        color: color,
        fontFamily: 'FiraCode-Regular',
      ),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}

// class TextDescription extends StatelessWidget {
//   const TextDescription(
//     this.text, {
//     super.key,
//     this.textAlign,
//     this.fontWeight = FontWeight.normal,
//     this.fontSize = 10,
//     this.color = Colors.white,
//   });
//
//   final String text;
//   final FontWeight fontWeight;
//   final double fontSize;
//   final Color color;
//   final TextAlign? textAlign;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(
//         fontWeight: fontWeight,
//         fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
//         color: color,
//         fontFamily: 'FiraCode-Regular',
//       ),
//       overflow: TextOverflow.ellipsis,
//       textAlign: textAlign,
//     );
//   }
// }

class TextLink extends StatelessWidget {
  const TextLink(
    this.text, {
    super.key,
    this.textAlign,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
    this.color = Colors.white,
    this.onTap,
  });

  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final TextAlign? textAlign;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
            fontWeight: fontWeight,
            fontSize: MediaQuery.textScalerOf(context).scale(fontSize),
            color: Colors.blue,
            fontFamily: 'FiraCode-Regular',
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue),
        overflow: TextOverflow.ellipsis,
        textAlign: textAlign,
      ),
    );
  }
}
