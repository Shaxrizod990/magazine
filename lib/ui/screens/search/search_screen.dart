import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: Column(
            children: [
              Container(
                height: 40.0, // Set the desired height
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        decoration: BoxDecoration(
                          color: Colors.white30, // Change the background color
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey, // Use your desired border color
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search",
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (text) {
                                    // Update _isSearchEmpty based on text input
                                    // setState(() {
                                    //   _isSearchEmpty = text.isEmpty;
                                    // });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle filter button tap
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.fromLTRB(5, 30, 5, 0),
                        decoration: BoxDecoration(
                          color: Colors.white30, // Change the background color
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey, // Use your desired border color
                          ),
                        ), // Filter icon
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        ListView(children: [

        ],)
      ]),
    ));
  }
}
