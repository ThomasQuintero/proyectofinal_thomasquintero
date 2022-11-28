import 'package:marvel_comics/models/response_comics.dart';
import 'package:flutter/foundation.dart';

class ComicsFavoritesProvider extends ChangeNotifier {
  final List<Comic> _listFavoriteComics = [];

  List<Comic> get listFavoriteList => _listFavoriteComics;

  void addComic(Comic comic) {
    _listFavoriteComics.add(comic);
    notifyListeners();
  }

  void removeComic(Comic comic) {
    _listFavoriteComics.remove(comic);
    notifyListeners();
  }
}
