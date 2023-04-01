import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nauggets/screens/screens.dart';
import 'package:nauggets/utils/colors.dart';
import 'package:nauggets/utils/styles.dart';

import 'package:percent_indicator/percent_indicator.dart';

class AssetScreen extends StatefulWidget {
  const AssetScreen({super.key});

  @override
  State<AssetScreen> createState() => _AssetScreenState();
}

class _AssetScreenState extends State<AssetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    padding:
                        const EdgeInsets.only(left: 100, top: 50, right: 30),
                    child: CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 3.0,
                      percent: 1.0,
                      center: const Icon(Icons.person, size: 80),
                      progressColor: Colors.green,
                    )
                    //child: const Icon(Icons.person, size: 80),
                    ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                    padding:
                        const EdgeInsets.only(left: 10, top: 50, right: 30),
                    child: buildStatColumn('Tommy Berns', 'Los Angeles')),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Center(
              child: CircularPercentIndicator(
                radius: 150.0,
                lineWidth: 5.0,
                percent: 0.80,
                center: CircularPercentIndicator(
                  radius: 120,
                  lineWidth: 5.0,
                  percent: 0.60,
                  center: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.bar_chart,
                          size: 40,
                          color: Colors.blue,
                        ),
                        Text(
                          'Balance',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "\$567,67",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  progressColor: kPrimaryColor,
                ),
                progressColor: kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 150,
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 100,
                    width: 185,
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Icon(
                            Icons.circle_rounded,
                            color: Colors.green,
                            size: 20,
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'INCOMES',
                              style: style9,
                            ),
                          ),
                          subtitle: Text(
                            '309',
                            style: style10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    width: 195,
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Icon(
                            Icons.circle_rounded,
                            color: Colors.green,
                            size: 20,
                          ),
                          title: Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Text(
                              'EXPENSES',
                              style: style9,
                            ),
                          ),
                          subtitle: Text(
                            '234',
                            style: style10,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: bottomnavbar(),
      ),
    );
  }
}
