import 'package:http/http.dart' as http;
import 'package:test_project/app/models/mainmodel.dart';

class ApiService {
  var client = http.Client();

  Future<Sample?> getproducts(String item) async {
    var response = await client.get(Uri.parse(
        'https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=$item'));

    if(response.statusCode == 200)
      {
        var jsonresponse = response.body;
        return sampleFromJson(jsonresponse);
      }
    else
      {
        return null;
      }
  }
}
