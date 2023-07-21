import 'package:flutter/material.dart';
import 'package:manif/shared/widgets/my_custom_button.dart';
import 'package:manif/shared/widgets/my_ope_container.dart';
import 'package:manif/shared/widgets/my_status_box_widget.dart';
import 'package:manif/shared/widgets/my_operation_container.dart';
import 'package:manif/shared/widgets/my_mouvement_box.dart';


class HomePage extends StatefulWidget {
  final String currentUserPhoneNumber;
  final String currentUserUid;

  const HomePage({
    Key? key,
    required this.currentUserPhoneNumber,
    required this.currentUserUid,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back),
                    Row(
                      children: [
                        const Icon(Icons.chat_bubble),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/FlutterBank.png'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  "Bonjour " + widget.currentUserPhoneNumber,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Debit card",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                  ),
                ),
                const Text(
                  "€ 100 315.15",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 2,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Mes raccourcis carte",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    const Icon(Icons.tune),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyCustomButton(
                      paddingWidth: 30,
                      icon: Icons.credit_score,
                      title: "Cards",
                      hasBackground: true,
                    ),
                    MyCustomButton(
                      paddingWidth: 30,
                      icon: Icons.wallet,
                      title: "Pay",
                      hasBackground: false,
                    ),
                    MyCustomButton(
                      paddingWidth: 30,
                      icon: Icons.arrow_forward_rounded,
                      title: "Transfer",
                      hasBackground: false,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    MyOPEButton(
                        paddingWidth: 10,
                        title: "Mes opérations"),
                    MyMooveButton(
                      paddingWidth: 30,
                      icon: Icons.shopping_cart_outlined,
                      title: "Nike Shop",
                      numberValue: "-153€",
                      hasMoney: false,
                    ),
                    MyMooveButton(
                      paddingWidth: 30,
                      icon: Icons.house_outlined,
                      title: "Loyer",
                      numberValue: "-863€",
                      hasMoney: false,
                    ),
                    MyMooveButton(
                      paddingWidth: 30,
                      icon: Icons.monetization_on_outlined,
                      title: "Paie",
                      numberValue: "+3200€",
                      hasMoney: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}