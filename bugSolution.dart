```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Use jsonData...
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
        // Handle the invalid JSON format
      } catch (e) {
        print('Error decoding JSON: $e');
        // Handle other potential errors during JSON decoding
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```