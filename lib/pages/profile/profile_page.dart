import 'package:flutter/material.dart';
import 'package:manif/shared/widgets/my_custom_button.dart';
import 'package:manif/shared/widgets/my_donnee_container.dart';
import 'package:manif/shared/widgets/my_icon_container.dart';
import 'package:manif/shared/widgets/my_status_box_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                          Icons.arrow_back
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 150,
                    width: 170,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                          image: AssetImage('assets/images/FlutterBank.png'),
                        )
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Jennifer",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30,
                        color: Color(0xFF00596e),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyIconContainer(icon: Icons.chat_bubble),
                      SizedBox(width: 15),
                      MyIconContainer(icon: Icons.abc_rounded),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyDonneeContainer(
                        paddingWidth: 30,
                        icon: Icons.add_chart,
                        title: "Utilisation des données",
                      ),
                      MyDonneeContainer(
                        paddingWidth: 30,
                        icon: Icons.contact_mail_outlined,
                        title: "Mes coordonnées",
                      ),
                      MyDonneeContainer(
                        paddingWidth: 30,
                        icon: Icons.account_balance,
                        title: "Ma situation financière et patrimoniale",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
/*
  MyStatusBoxWidget(
                      icon: Icons.send,
                      stats: 12,
                      statsUnit: "K",
                      statsCurrency: "\$",
                      title: "In progress",
                      color: Color(0xff90DBF2),
                      description: "Je suis la description",
                  ),
   */
}
