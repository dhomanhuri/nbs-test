import 'dart:math';

void main() {
  //
  List array = rotationArray([1, 2, 3, 4, 5], 12);
  print(array);
  // validString('asdasdssadejhdghs');
}

List rotationArray(List myList, int rotateArray) {
  // rotateArray = 12;
  rotateArray = rotateArray % myList.length;
  for (int i = 0; i < rotateArray; i++) {
    myList.add(myList[0]);
    myList.removeAt(0);
  }
  // print(myList);
  return myList;
}

bool validString(String strings) {
  // String strings = 'abcdefghhgfedecba';
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
  if (totalMax - totalMin <= 1) {
    // print(true);
    return true;
  } else {
    // print(false);
    return false;
  }
}
