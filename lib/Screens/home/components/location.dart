import 'package:flutter/material.dart';
import 'package:travel_app/Screens/home/components/map_widget.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          shrinkWrap: true,
          children: <Widget>[
            MyMap(),
            Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blue..withOpacity(.4)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            Colors.white60,
                            Colors.white30,
                            Colors.blueAccent,
                          ],
                        ),
                      ),
                      child: Icon(
                        Icons.brightness_5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "23 °",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .apply(color: Colors.white, fontWeightDelta: 2),
                  ),
                  Text(
                    "London",
                    style: Theme.of(context)
                        .textTheme
                        .headline
                        .apply(color: Colors.white, fontWeightDelta: 2),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      );
  }
}
