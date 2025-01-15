```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Incorrectly handling JSON decoding without error handling
      final jsonData = jsonDecode(response.body);
      // Use jsonData...
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Re-throw to allow higher-level error handling
    rethrow; 
  }
}
```