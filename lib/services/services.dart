import 'package:http/http.dart' as http;

class ApiServices {
  // get all shows
  static Future<List<Object>> fetchallShows() async {
    var res = await http.get(
      Uri.parse("https://api.tvmaze.com/shows"),
    );
    var list = [res.body, res.statusCode];

    return list;
  }
}
