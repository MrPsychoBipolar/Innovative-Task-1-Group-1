import 'package:flutter/material.dart';

class MaisoFamilyDetails{
  String name;
  String relationship;
  String occupation;
  String birthday;
  int age;
  AssetImage picture;

  MaisoFamilyDetails({required this.name, required this.relationship, required this.occupation, required this.birthday, required this.age, required this.picture});

}

List<MaisoFamilyDetails> famList2 = [
  MaisoFamilyDetails(
    name: 'Liberato E. Maiso',
    relationship: 'Father',
    occupation: 'Fish Peddler',
    birthday: 'December 19, 1968',
    age: 53,
    picture: const AssetImage('assets/Maiso_Liberato_E.jpg'),
  ),
  MaisoFamilyDetails(
    name: 'Bebinah C. Maiso',
    relationship: 'Mother',
    occupation: 'Housewife',
    birthday: 'July 12, 1976',
    age: 46,
    picture: const AssetImage('assets/Maiso_Bebinah_C.jpg'),
  ),
  MaisoFamilyDetails(
    name: 'Hazel Grace C. Maiso',
    relationship: 'Sister',
    occupation: 'Quality Manager at Smart Ecosystem Philippines, Inc.',
    birthday: 'October 22, 1999',
    age: 23,
    picture: const AssetImage('assets/Maiso_Hazel_Grace_C.jpg'),
  ),
  MaisoFamilyDetails(
    name: 'Hyacinth Grace C. Maiso',
    relationship: 'Sister',
    occupation: '-NA-',
    birthday: 'December 11, 2004',
    age: 17,
    picture: const AssetImage('assets/Maiso_Hyacinth_Grace_C.jpg'),
  ),
  MaisoFamilyDetails(
    name: 'Hydee Grace C. Maiso',
    relationship: 'Sister',
    occupation: '-NA-',
    birthday: 'January 29, 2006',
    age: 16,
    picture: const AssetImage('assets/Maiso_Hydee_Grace_C.jpg'),
  ),
  MaisoFamilyDetails(
    name: 'John Denver C. Maiso',
    relationship: 'Me',
    occupation: 'Quality Assurance at Remotasks',
    birthday: 'November 08, 2000',
    age: 21,
    picture: const AssetImage('assets/Maiso_John_Denver_C.jpg'),
  ),
];