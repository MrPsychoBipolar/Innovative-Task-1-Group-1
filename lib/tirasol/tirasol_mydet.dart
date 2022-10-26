import 'package:flutter/material.dart';

class TirasolFamilyDetails{
  String name;
  String relationship;
  String occupation;
  String birthday;
  int age;
  AssetImage pics;

  TirasolFamilyDetails({required this.name, required this.relationship, required this.occupation, required this.birthday, required this.age, required this.pics});

}

List<TirasolFamilyDetails> famList3 = [
  TirasolFamilyDetails(
    name: 'Arnold A. Tirasol',
    relationship: 'Father',
    occupation: 'Soldier',
    birthday: 'June 19, 1960',
    age: 62,
    pics: const AssetImage('assets/Tirasol_Arnold_A..jpg'),
  ),
  TirasolFamilyDetails(
    name: 'Jean B. Tirasol',
    relationship: 'Mother',
    occupation: 'Housewife',
    birthday: 'July 12, 1965',
    age: 57,
    pics: const AssetImage('assets/Tirasol_Jean_B..jpg'),
  ),
  TirasolFamilyDetails(
    name: 'Dwyne Kirk B. Tirasol',
    relationship: 'Me',
    occupation: 'Student',
    birthday: 'September 20, 2001',
    age: 21,
    pics: const AssetImage('assets/Tirasol_Dwyne_Kirk_B..jpg'),
  )
];