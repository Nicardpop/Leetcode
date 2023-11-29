class Solution {
  bool isPalindrome(int x) {
    List<double> num = [];
    var abc;
    var numberValue;
    if (x <= 0) return false;
    do {
      abc = x / 10;
      numberValue = abc.floor();
      print(numberValue);
      final floatValue = abc - numberValue;
      num.add((double.parse((floatValue).toStringAsFixed(1)) * 10));
      x = numberValue;
    } while (numberValue != 0);
    print(num);
    int j = num.length - 1;
    for (int i = 0; i < num.length; i++) {
      if (num[i] == num[j]) {
        j--;
      } else {
        return false;
      }
    }
    return true;
  }
}
