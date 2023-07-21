import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manif/pages/auth/authentication_page.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final RoundedLoadingButtonController _getStartedBtnController =
  RoundedLoadingButtonController();

  final RoundedLoadingButtonController _haveAnAccountBtnController =
  RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/logoFBank.svg',
                  height: 300,
                ),
                SizedBox(
                    height: 30
                ),
                Text("Bonjour",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25
                  ),
                ),
                SizedBox(
                    height: 10
                ),
                Text(
                  "Au plus près de nos utilisateurs",
                  style: TextStyle(
                      color: Colors.black87
                  ),
                ),
                SizedBox(
                    height: 30
                ),
                RoundedLoadingButton(
                  child: Text('Création du compte', style: TextStyle(color: Colors.white)),
                  color: Color(0xFF00596e),
                  successColor: Colors.green,
                  controller: _getStartedBtnController,
                  onPressed: () => _onClickGetStartedButton(),
                ),
                SizedBox(height: 30),
                RoundedLoadingButton(
                  child: Text('Je possède déjà un compte', style: TextStyle(color: Colors.white)),
                  color: Colors.grey.withOpacity(0.8),
                  controller: _haveAnAccountBtnController,
                  onPressed: _onClickGetStartedButton,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onClickGetStartedButton(){
    Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => const AuthenticationPage()
        )
    );
    _getStartedBtnController.stop();
    _haveAnAccountBtnController.stop();
  }
}
