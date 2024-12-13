```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success! 
      // Process the JSON response
      final jsonResponse = jsonDecode(response.body);
      // ...
    } else {
      // Handle error (Non 200 status code)
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during network request
    print('Error fetching data: $e');
    // Rethrow the exception to be handled further up the call stack if needed
    rethrow; 
  }
}
```