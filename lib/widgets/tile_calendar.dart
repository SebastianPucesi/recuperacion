import 'package:flutter/cupertino.dart';

class TileCalendar extends StatelessWidget {
  const TileCalendar({
    super.key,
    required this.imgUrlLocation,
    required this.imgUrlFlagCountry,
    required this.nameRally,
    required this.nameCountry,
    required this.startDate,
    required this.endDate,
  });

  final String imgUrlLocation;
  final String imgUrlFlagCountry;
  final String nameRally;
  final String nameCountry;
  final int startDate;
  final int endDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: 270,
        width: double.infinity,
        decoration: BoxDecoration(
          color: CupertinoColors.systemGrey6,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 165,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imgUrlLocation)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(imgUrlFlagCountry),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(nameRally),
                      Text(nameCountry),
                      Text(DateTime.fromMillisecondsSinceEpoch(startDate)
                          .toString()),
                      Text(DateTime.fromMillisecondsSinceEpoch(endDate)
                          .toString()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
