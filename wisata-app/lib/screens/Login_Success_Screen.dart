import 'package:flutter/material.dart';
import 'package:wisata_app/screens/dashboard_screen.dart';
import 'package:wisata_app/size_config.dart';
import 'package:wisata_app/widgets/default_button.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login Success"),
      ),
      body: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Login Success",
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
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DashboardScreen();
                }));
              },
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
