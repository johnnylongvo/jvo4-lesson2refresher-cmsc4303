//Collection if/for

// not a single data, but multiple data
// arrayList but in dart is called a 'List'

// void main() {
//   List<int> m = [1, 2, 3, 4, 5];

//int a = 0;
//  int a = 1; output: 0, 1, 2, 99

// List<int> list = [
//   0,
//   1,
//   2,
//   if (a == 0) 100,
//   99,
// ];

// List<dynamic> m = [
//   0,
//   1,
//   2,
//   if (a == 0) {100}, //[0, 1, 2, {100}, 99]
//   99,
// ];

void main() {
  int a = 3;
  List<dynamic> m = [
    0,
    1,
    2,
    if (a == 0)
      100
    else if (a == 1)
      101 //give comma at end of if statement
    else
      102,
    99,
  ];

  print(m); //output: [0, 1, 2, 100, 99]
}
