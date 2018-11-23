import 'dart:async';

import 'package:http/http.dart' as http;

Future<String> fetchCountry(http.Client client) async {
  final response = await client.get('http://restcountries.eu/rest/v2/all');
  // Use the compute function to run parsePhotos in a separate isolate
  return response.body;
}
