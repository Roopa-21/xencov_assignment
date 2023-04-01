import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:nauggets/screens/asset_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nauggets/utils/colors.dart';
import 'package:nauggets/utils/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const FaIcon(FontAwesomeIcons.angleLeft, size: 30)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.bars,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 100, top: 50, right: 30),
                  child: CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 3.0,
                    percent: 1.0,
                    center: Icon(Icons.person, size: 80),
                    progressColor: Colors.green,
                  )
                  //child: const Icon(Icons.person, size: 80),
                  ),
              const SizedBox(
                width: 5,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 10, top: 50, right: 30),
                  child: buildStatColumn('Tommy Berns', 'Los Angeles')),
            ],
          ),

          SizedBox(
            height: 100,
            child: Container(
              padding: const EdgeInsets.only(left: 10, top: 50, right: 30),
              //color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Balance ',
                    style: style8,
                  ),
                  Text(
                    '   \$567,67',
                    style: style10,
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 100,
              width: 200,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: kSecondaryColor,
                      radius: 30,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.add, size: 40),
                        color: kPrimaryColor,
                        onPressed: () {},
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: kSecondaryColor,
                      radius: 30,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.search,
                          size: 40,
                        ),
                        color: kPrimaryColor,
                        onPressed: () {},
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: kSecondaryColor,
                      radius: 30,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.bar_chart,
                          size: 40,
                        ),
                        color: kPrimaryColor,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AssetScreen()),
                          );
                        },
                      ),
                    ),
                  ]),
            ),
          ),
          CreditCard(
              cardNumber: '3567 55437 9080 5600',
              cardExpiry: '05/20',
              cardHolderName: "Tommy Berns",
              bankName: "Card",
              cardType: CardType.masterCard,
              frontBackground: CardBackgrounds.black,
              backBackground: CardBackgrounds.white),
          //FloatingActionButton(onPressed: getUser),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                color: kSecondaryColor,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: kGrey.withOpacity(0.03),
                    spreadRadius: 10,
                    blurRadius: 3,
                    // changes position of shadow
                  ),
                ]),
            child: Center(
              child: ListTile(
                title: const Text(
                  'My cards',
                  style: style8,
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.angleRight)),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                color: kSecondaryColor,
                shape: BoxShape.rectangle,
                boxShadow: [
                  BoxShadow(
                    color: kGrey.withOpacity(0.03),
                    spreadRadius: 10,
                    blurRadius: 3,
                    // changes position of shadow
                  ),
                ]),
            child: Center(
              child: ListTile(
                title: const Text(
                  'Transactions',
                  style: style8,
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.angleRight)),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: bottomnavbar(),
    );
  }
}

Column buildStatColumn(String text, String location) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 16, 95, 160)),
      ),
      Container(
          margin: const EdgeInsets.only(top: 5),
          child: RichText(
            text: TextSpan(
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: kGrey,
                ),
                children: [
                  TextSpan(text: location),
                  const WidgetSpan(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ]),
          )),
    ],
  );
}

BottomNavigationBar bottomnavbar() {
  return BottomNavigationBar(
      unselectedFontSize: 0,
      selectedFontSize: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: kSecondaryColor,
      currentIndex: 3,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kGrey.withOpacity(0.5),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          label: "Stocks",
          icon: Icon(
            Icons.bar_chart,
            size: 40,
          ),
        ),
        BottomNavigationBarItem(
            label: "Bar", icon: FaIcon(FontAwesomeIcons.dollarSign, size: 35)),
        BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.security_rounded,
              size: 35,
            )),
        BottomNavigationBarItem(
          label: "My",
          icon: Icon(Icons.person, size: 40),
        ),
        BottomNavigationBarItem(
            label: "My",
            icon: FaIcon(
              FontAwesomeIcons.gear,
              size: 35,
            )),
      ]);
}
