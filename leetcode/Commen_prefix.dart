void main() {
  final List<String> strs = ["flower", "flow", "flight"];
  int i = 0;
  int j = 1;
  do {
    if (strs[i][0] == strs[j][0]) {
      i++;
      j++;
      print("i = ${i}");
      print("j = ${j}");
    } else {
      print("there are no commen prefixes! ");
      break;
    }
  } while (j < strs.length);
  if (i == strs.length - 1) {
    print("the commen prefixe is : ${strs[i][0]}");
  }
}
