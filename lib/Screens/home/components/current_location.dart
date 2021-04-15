import 'package:flutter/material.dart';

class CurrentLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Your Current Location",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
