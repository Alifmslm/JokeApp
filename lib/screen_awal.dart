import 'package:flutter/material.dart';
import 'package:joke_app/jokes.dart';
import 'package:joke_app/detail_screen.dart';

class ScreenAwal extends StatelessWidget {
  const ScreenAwal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final KumpulanJokes candaan = kumpulanJokes[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(candaandetail: candaan);
              }));
            },
            child: Card(
              color: Colors.blue,
              child: SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      candaan.name,
                      style: TextStyle(
                          color: Colors.white,
                      fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: kumpulanJokes.length,
      ),
    );
  }
}
