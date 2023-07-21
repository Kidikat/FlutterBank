import 'package:flutter/material.dart';
import 'package:manif/shared/widgets/my_portfolio_box_widget.dart';
import 'package:manif/shared/widgets/my_credit_card.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
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
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "Mes comptes",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyPortfolioBoxWidget(
                      icon: Icons.account_balance_wallet_outlined,
                      title: "Compte perso",
                      color: Colors.lightBlueAccent,
                    ),
                    MyPortfolioBoxWidget(
                      icon: Icons.join_inner_sharp,
                      title: "Compte join",
                      color: Colors.blueGrey,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    MyCreditCard(
                      cardNumber: '3652 4578 9562 1325',
                      cardHolder: 'Jennifer Morense',
                      expiryDate: '12/24',
                      cardType: 'VISA',
                    ),

                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Je créer une carte virtuelle",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  "J'ai perdue ma carte",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}