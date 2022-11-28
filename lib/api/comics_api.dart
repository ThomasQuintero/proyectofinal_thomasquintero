import 'package:marvel_comics/models/response_comics.dart';
import 'package:http/http.dart' as http;

Future<List<Comic>> apiComics() async {
  String baseUrl = 'gateway.marvel.com';
  String endPoint = 'v1/public/comics';

  String ts = '1000';
  String apiKey = '8b62597cc923d5667f43b4c148dc2faa';
  String hash = '4b0d7753492f01c14c008bbce8f72367';

  var url = Uri.http(baseUrl, endPoint, {
    'apikey': apiKey,
    'ts': ts,
    'hash': hash,
    'limit': '100',
  });

  final response = await http.get(url);

  if (response.statusCode == 200) {
    final responseComics = responseComicsFromMap(response.body);
    final results = responseComics.data.results;
    return results;
  } else {
    throw Exception('Error getting the list of comics');
  }
}
