Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception("Invalid User ID");
  }

  return {"id": userId, "name": "John Doe", "role": "Developer"};
}

void main() async {
  print("--- Test Case 1: Valid User ID ---");
  try {
    var profile = await fetchProfile(1);
    print("Result: $profile");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Fetch execution completed (Case 1)");
  }

  print("\n--- Test Case 2: Invalid User ID ---");
  try {
    var profile = await fetchProfile(0);
    print("Result: $profile");
  } catch (e) {
    print("Error: ${e.toString()}");
  } finally {
    print("Fetch execution completed (Case 2)");
  }
}
