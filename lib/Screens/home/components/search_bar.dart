import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        maxLines: 1,
        decoration: InputDecoration(
          hintText: "Search...",
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          fillColor: Colors.grey[200],
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
