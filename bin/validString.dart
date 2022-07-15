import 'dart:math';

void main() {
  String strings = 'abcdefghhgfedecba';
  List liststring = strings.split('');
  liststring.sort();
  print('Ascending order: $liststring');
  String iInitialized = liststring[0];
  List<int> total = [];
  int count = 1, totalMax, totalMin;
  for (int i = 0; i < liststring.length; i++) {
    if (liststring[i] == iInitialized) {
      count++;
    } else {
      total.add(count);
      count = 1;
    }
    iInitialized = liststring[i];
  }
  totalMax = total.reduce(max);
  totalMin = total.reduce(min);
  print('max val = ' + totalMax.toString());
  print('min val = ' + totalMin.toString());
  if (totalMax - totalMin <= 1) {
    print(true);
  } else {
    print(false);
  }
}
