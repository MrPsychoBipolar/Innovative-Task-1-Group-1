import 'package:flutter/material.dart';

class DignadiceFamilyDetails{
  String name;
  String relationship;
  String occupation;
  String birthday;
  int age;
  AssetImage imageUrl;

  DignadiceFamilyDetails({required this.name, required this.relationship, required this.occupation, required this.birthday, required this.age, required this.imageUrl});

}

List<DignadiceFamilyDetails> familyList6 = [
  DignadiceFamilyDetails(
    name: 'Jaime',
    relationship: 'Father',
    occupation: 'Employee',
    birthday: 'August 7, 1969',
    age: 53,
    imageUrl: const AssetImage('assets/mem_prof3.png'),
  ),
  DignadiceFamilyDetails(
    name: 'Maria',
    relationship: 'Mother',
    occupation: 'Employee',
    birthday: 'December 24, 1974 ',
    age: 47,
    imageUrl: const AssetImage('assets/mem_prof2.png'),
  ),
  DignadiceFamilyDetails(
    name: 'James',
    relationship: 'Me',
    occupation: 'Student',
    birthday: 'July 5, 2001',
    age: 21,
    imageUrl: const AssetImage('assets/mem_prof1.png'),
  ),
];