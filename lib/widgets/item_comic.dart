import 'package:marvel_comics/models/response_comics.dart';
import 'package:flutter/material.dart';

class ItemComic extends StatelessWidget {
  final Comic comic;

  const ItemComic({
    Key? key,
    required this.comic,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'description', arguments: comic);
      },
      child: Container(
        margin: const EdgeInsets.all(12.0),
        child: ListTile(
          leading: SizedBox(
            width: 70.0,
            child: Image(
              image: NetworkImage(
                comic.getFullPoster(),
              ),
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            comic.title,
            style: const TextStyle(
              fontSize: 23,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios,
              size: 25, color: Colors.black),
        ),
      ),
    );
  }
}
