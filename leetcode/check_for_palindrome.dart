class Solution {
  bool isPalindrome(int x) {
    List<double> num = [];
    var abc;
    var numberValue;
    if (x <= 0) return false;
    do {
      abc = x / 10; // 1,4 / 0,1
      numberValue = abc.floor(); // 1 / 0
      print(numberValue);
      final floatValue = abc - numberValue; // ,4 / ,1
      num.add((double.parse((floatValue).toStringAsFixed(1)) *
          10)); // num[0] = 4.0 / num[1] = 1.0
      x = numberValue; // abc = 1
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
