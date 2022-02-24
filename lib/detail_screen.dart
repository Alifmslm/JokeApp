import 'package:joke_app/jokes.dart';
import 'package:flutter/material.dart';
import 'package:joke_app/screen_awal.dart';

class DetailScreen extends StatelessWidget {
  late final KumpulanJokes candaandetail;
  DetailScreen({required this.candaandetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Joke'),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            height: 250,
            width: 250,
            child: Card(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(candaandetail.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(candaandetail.punchline,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    child: Text(
                      'Like This Joke ??',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  FavouriteButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavourite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
      onPressed: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
    );
  }
}
