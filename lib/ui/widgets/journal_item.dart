import 'package:flutter/material.dart';

class JournalItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: 80,
                height: 80,
                child: Center(
                    child: Image.asset(
                  "assets/images/logo.jgp",
                  width: double.infinity,
                  height: double.infinity,
                )),
              ),
            ),
          ),
          
          Text('Assalamu alaykum yaxshimisiz')
        ],
      ),
    );
  }
}
