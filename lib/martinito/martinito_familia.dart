import 'package:flutter/material.dart';

class MartinitoFamilia{
  String name;
  String relationship;
  String work;
  String bday;
  int age;
  AssetImage photo;

  MartinitoFamilia({required this.name, required this.relationship,required this.work, required this.bday, required this.age, required this.photo});

}

List<MartinitoFamilia> mFam = [
  MartinitoFamilia(
    name: 'Dante P. Martinito',
    relationship: 'Father',
    work: 'Seafearer',
    bday: 'September 30, 1968',
    age: 54,
    photo: const AssetImage('assets/Martinito,_Dante_P.jpg'),
  ),
  MartinitoFamilia(
    name: 'Chene A. Martinito',
    relationship: 'Mother',
    work: 'Housewife',
    bday: 'November 05, 1978',
    age: 44,
    photo: const AssetImage('assets/Martinito_Chene_A.jpg'),
  ),
  MartinitoFamilia(
    name: 'Kathryn Leigh A. Martinito',
    relationship: 'Sister',
    work: '--NA--',
    bday: 'April 27, 2000',
    age: 22,
    photo: const AssetImage('assets/Martinito_Kathryn_Leigh_A.jpg'),
  ),
  MartinitoFamilia(
    name: 'Kyla Theresa A. Martinito',
    relationship: 'Me',
    work: '--NA--',
    bday: 'July 12, 2002',
    age: 20,
    photo: const AssetImage('assets/Martinito_Kyla_Theresa_A.jpg'),
  ),
  MartinitoFamilia(
    name: 'Kim Elizabeth A. Martinito',
    relationship: 'Sister',
    work: '--NA--',
    bday: 'December 04, 2006',
    age: 15,
    photo: const AssetImage('assets/Martinito_Kim_Elizabeth_A.jpg'),
  ),

];