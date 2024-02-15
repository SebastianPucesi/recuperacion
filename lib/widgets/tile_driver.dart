import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileDriver extends StatelessWidget {
  const TileDriver({
    super.key,
    required this.imgUrlDriver,
    required this.imgUrlFlagCountry,
    required this.nameDriver,
    required this.roleDriver,
    required this.team,
    required this.car,
  });

  final String imgUrlDriver;
  final String imgUrlFlagCountry;
  final String nameDriver;
  final String roleDriver;
  final String team;
  final String car;

  @override
  Widget build(BuildContext context) {
    const customStyleText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey6,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imgUrlDriver),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                        child: Image.network(imgUrlFlagCountry),
                      ),
                      Text(nameDriver, style: customStyleText),
                      Text(roleDriver, style: customStyleText),
                      Text(
                        team,
                        style: const TextStyle(fontSize: 8),
                        overflow: TextOverflow.clip,
                      ),
                      Text(car, style: customStyleText),
                    ],
                  ),
                )
              ],
            )));
  }
}
