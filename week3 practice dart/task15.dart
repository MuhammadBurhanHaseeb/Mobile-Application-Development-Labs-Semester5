import 'dart:io';
import 'dart:math';


  // Exercise 15

void main() {
  stdout.write("Exercise 15\nEnter password strength (weak/strong): ");
  String strength = stdin.readLineSync()!;
  bool isStrong = strength.toLowerCase() == "strong";
  String result15 = generateRandomPassword(strength.length , isStrong);
  print("Generated Password: $result15");

}
String generateRandomPassword(int length, bool strong) {
  String chars = strong
      ? 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()'
      : 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String password = '';
  Random random = Random();
  for (int i = 0; i < length; i++) {
    int index = random.nextInt(chars.length);
    password += chars[index];
  }
  return password;
}
