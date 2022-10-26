import 'package:flutter/material.dart';

class CharcosFamilyDetails{
  String name;
  String relationship;
  String occupation;
  String birthday;
  int age;
  AssetImage imageUrl;

  CharcosFamilyDetails({required this.name, required this.relationship, required this.occupation, required this.birthday, required this.age, required this.imageUrl});

}

List<CharcosFamilyDetails> famList7 = [
  CharcosFamilyDetails(
    name: 'Raul G. Charcos',
    relationship: 'Father',
    occupation: 'Fisherman',
    birthday: 'March 20, 1965',
    age: 57,
    imageUrl: const AssetImage('assets/Charcos_Raul_G.jpg'),
  ),
  CharcosFamilyDetails(
    name: 'Arlene A. Charcos',
    relationship: 'Mother',
    occupation: 'Sari-Sari Store Owner',
    birthday: 'January 23, 1972',
    age: 50,
    imageUrl: const AssetImage('assets/Charcos_Arlene_A.jpg'),
  ),
  CharcosFamilyDetails(
    name: 'Arah C. Borja',
    relationship: 'Sister',
    occupation: 'Housewife',
    birthday: 'February 24, 1989',
    age: 33,
    imageUrl: const AssetImage('assets/Borja_Arah_C.jpg'),
  ),
  CharcosFamilyDetails(
    name: 'Ariel A. Charcos',
    relationship: 'Brother',
    occupation: 'Ship Wielder',
    birthday: 'July 12, 1990',
    age: 32,
    imageUrl: const AssetImage('assets/Charcos_Ariel_A.jpg'),
  ),
  CharcosFamilyDetails(
    name: 'Archielyn A. Charcos',
    relationship: 'Sister',
    occupation: 'Housewife',
    birthday: 'June 2, 1992',
    age: 29,
    imageUrl: const AssetImage('assets/Charcos_Archielyn_A.jpg'),
  ),
  CharcosFamilyDetails(
    name: 'Arwen A. Charcos',
    relationship: 'Brother',
    occupation: 'Student',
    birthday: 'April 28, 2004',
    age: 18,
    imageUrl: const AssetImage('assets/Charcos_Arwen_A.jpg'),
  ),
  CharcosFamilyDetails(
    name: 'Arjay A. Charcos',
    relationship: 'Me',
    occupation: 'Student',
    birthday: 'May 28, 2001',
    age: 21,
    imageUrl: const AssetImage('assets/Charcos_Arjay_A.jpg'),
  ),
];