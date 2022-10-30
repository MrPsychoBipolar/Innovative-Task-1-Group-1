import 'package:flutter/material.dart';

class CabalunaFamilyDetails{
  String name;
  String relationship;
  String occupation;
  String birthday;
  int age;
  AssetImage imageUrl;

  CabalunaFamilyDetails({required this.name, required this.relationship, required this.occupation, required this.birthday, required this.age, required this.imageUrl});

}

List<CabalunaFamilyDetails> familyList5 = [
  CabalunaFamilyDetails(
    name: 'Ruel C. Cabaluna',
    relationship: 'Father',
    occupation: 'Driver',
    birthday: 'May 6, 1974',
    age: 48,
    imageUrl: const AssetImage('assets/Cabaluna_Ruel_C.jpg'),
  ),
  CabalunaFamilyDetails(
    name: 'Vergie',
    relationship: 'Mother',
    occupation: 'Housewife',
    birthday: 'October 6, 1971 ',
    age: 51,
    imageUrl: const AssetImage('assets/Cabaluna_Vergie_B.jpg'),
  ),
  CabalunaFamilyDetails(
    name: 'Wengel Kate B. Cabaluna',
    relationship: 'Sister',
    occupation: '',
    birthday: 'August 26, 1999',
    age: 23,
    imageUrl: const AssetImage('assets/Cabaluna_Wengel_Kate_B.jpg'),
  ),
  CabalunaFamilyDetails(
    name: 'Roi Jenver B. Cabaluna',
    relationship: 'Me',
    occupation: 'Student',
    birthday: 'August 31, 2001',
    age: 21,
    imageUrl: const AssetImage('assets/Cabaluna_Roi _Jenver_B.jpg'),
  ),
];