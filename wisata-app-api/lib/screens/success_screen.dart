import 'package:flutter/material.dart';
import 'package:wisata_app/common/size_config.dart';
import 'package:wisata_app/widgets/default_button.dart';

class SuccessScreen extends StatelessWidget {
  final String text;
  final Function? press;
  const SuccessScreen({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "Back to home",
              press: press as void Function()?,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
