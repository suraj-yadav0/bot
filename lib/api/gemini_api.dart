class GeminiApi{
  // creating a header

  static Future<Map<String, String>> getHeader() async {
    return {
      'Content-Type' : 'application/json'
    };

  }
  
}