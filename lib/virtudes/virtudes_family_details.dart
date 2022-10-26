import 'package:flutter/material.dart';

class VirtudesFamilyDetails{
  String name;
  String relationship;
  String occupation;
  String birthday;
  int age;
  AssetImage imageUrl;

  VirtudesFamilyDetails({required this.name, required this.relationship, required this.occupation, required this.birthday, required this.age, required this.imageUrl});

}

List<VirtudesFamilyDetails> famList1 = [
  VirtudesFamilyDetails(
    name: 'Roy P. Virtudes',
    relationship: 'Father',
    occupation: 'Electric Motor Winder',
    birthday: 'Jan 8, 1966',
    age: 56,
    imageUrl: const AssetImage('assets/Virtudes_Roy_P.png'),
  ),
  VirtudesFamilyDetails(
    name: 'Emie D. Virtudes',
    relationship: 'Mother',
    occupation: 'Housewife',
    birthday: 'December 9, 1962',
    age: 60,
    imageUrl: const AssetImage('assets/Virtudes_Emerenciana_D.png'),
  ),
  VirtudesFamilyDetails(
    name: 'Rowena V. Parnell',
    relationship: 'Sister',
    occupation: 'Registered Nurse',
    birthday: 'Jan 19, 1986',
    age: 36,
    imageUrl: const AssetImage('assets/Parnell_Rowena_D.png'),
  ),
  VirtudesFamilyDetails(
    name: 'Glitter Lovely V. Alindogan',
    relationship: 'Sister',
    occupation: 'Housewife',
    birthday: 'October 22, 1989',
    age: 33,
    imageUrl: const AssetImage('assets/Alindogan_Glitter_Lovely_V.png'),
  ),
  VirtudesFamilyDetails(
    name: 'Aubrey V. Inato',
    relationship: 'Sister',
    occupation: 'IT Project Manager',
    birthday: 'October 11, 1991',
    age: 31,
    imageUrl: const AssetImage('assets/Inato_Aubrey_V.png'),
  ),
  VirtudesFamilyDetails(
    name: 'Dyna D. Virtudes',
    relationship: 'Sister',
    occupation: '-NA-',
    birthday: 'August 24, 1994',
    age: 28,
    imageUrl: const AssetImage('assets/Virtudes_Dyna_D.png'),
  ),
  VirtudesFamilyDetails(
    name: 'Nanli Danvir D. Virtudes',
    relationship: 'Me',
    occupation: '-NA-',
    birthday: 'Jan 9, 2001',
    age: 21,
    imageUrl: const AssetImage('assets/Virtudes_Nanli_Danvir.jpg'),
  ),
];