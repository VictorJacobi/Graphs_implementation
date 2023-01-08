import 'package:graph_implementation/custom_widgets/text_styles.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,this.text,this.style,this.color,this.textAlign,this.fontWeight,this.fontSize,this.height,this.overflow}) : super(key: key);
  final String? text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final Color? color;
  final TextOverflow? overflow;
  CustomText.heading1(this.text, {Key? key,this.color,this.textAlign,this.fontWeight,this.fontSize,this.height,this.overflow}): style = kHeading1Style.copyWith(color: color,fontWeight: fontWeight,fontSize: fontSize,height: height), super(key: key);
  CustomText.heading2(this.text, {Key? key,this.color,this.textAlign,this.fontWeight,this.fontSize,this.height,this.overflow}): style = kHeading2Style.copyWith(color: color,fontWeight: fontWeight,fontSize: fontSize,height: height), super(key: key);
  CustomText.heading3(this.text, {Key? key,this.color,this.textAlign,this.fontWeight,this.fontSize,this.height,this.overflow}): style = kHeading3Style.copyWith(color: color,fontWeight: fontWeight,fontSize: fontSize,height: height), super(key: key);
  CustomText.headline(this.text, {Key? key,this.color,this.textAlign,this.fontWeight,this.fontSize,this.height,this.overflow}): style = kHeadlineStyle.copyWith(color: color,fontWeight: fontWeight,fontSize: fontSize,height: height), super(key: key);
  CustomText.body(this.text, {Key? key,this.color,this.textAlign,this.fontWeight,this.fontSize,this.height,this.overflow}): style = kBodyStyle.copyWith(color: color??const Color(0xFF000000).withOpacity(0.5),height: height), super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text??'',style: style,textAlign: textAlign??TextAlign.center,overflow: overflow,);
  }
}
