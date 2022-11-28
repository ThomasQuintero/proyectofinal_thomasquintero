import 'package:marvel_comics/Pages/home_page.dart';
import 'package:marvel_comics/Pages/description_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:marvel_comics/Provider/favorite_provider.dart';

void main() {
  runApp(const PaginaPrincipal());
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ComicsFavoritesProvider(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'home',
          routes: {
            'home': (_) => const HomePage(),
            'description': (_) => const DescriptionComic(),
          }),
    );
  }
}
