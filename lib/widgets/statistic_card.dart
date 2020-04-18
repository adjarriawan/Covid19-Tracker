import 'package:covid19/data/models/statistic.dart';
import 'package:covid19/utils/constants.dart';
import 'package:covid19/widgets/color_key.dart';
import 'package:covid19/widgets/data_card.dart';
import 'package:flutter/material.dart';

class StatisticCard extends StatelessWidget {
  final Statistic statistic;

  StatisticCard({this.statistic});

  @override
  Widget build(BuildContext context) {
    return DataCard(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    statistic.flagUrl,
                    height: 20,
                    width: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    statistic.countryName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      color: Colors.grey[800]
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  ColorKey(
                    color: Constants.ACTIVE_COLOR_CODE,
                    value: statistic.active.toString(),
                  ),
                  ColorKey(
                    color: Constants.RECOVERED_COLOR_CODE,
                    value: statistic.recovered.toString(),
                  ),
                  ColorKey(
                    color: Constants.DEAD_COLOR_CODE,
                    value: statistic.dead.toString(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
