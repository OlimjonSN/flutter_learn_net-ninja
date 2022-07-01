void main() {
  List lst = [1, 2, 3, 'New-York'];

  //string value add to end of lst
  lst.add('London');
  print(lst);

  //Replace the first value of lst with a value of 0
  lst[0] = 0;
  print(lst);

  //Print the first value of lst
  print(lst.first);

  //Print the last value of lst
  print(lst.last);

  //Print the value London remove of the lst
  print(lst.remove('London'));

  //is the list empty
  print(lst.isEmpty);

  //is not the list empty
  print(lst.isNotEmpty);

  // reverse the list
  print(lst.reversed);
}
