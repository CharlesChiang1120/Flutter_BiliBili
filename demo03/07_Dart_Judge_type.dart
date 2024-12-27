void main(List<String> args) {
  var str = '1234';

  if (str is String) {
    print("Is string");
  } else if (str is int) {
    print("Is int");
  } else {
    print("other");
  }
}
