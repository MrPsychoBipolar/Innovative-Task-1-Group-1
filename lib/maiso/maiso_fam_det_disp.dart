import 'package:flutter/material.dart';
import 'package:innovative_task_1_group_1/maiso/maiso_fam_det.dart';


class MaisoFamilyDisplayDetails extends StatelessWidget {
  final MaisoFamilyDetails famiDetails;

  const MaisoFamilyDisplayDetails(this.famiDetails, {super.key});

  @override
  Widget build(BuildContext context) {return Scaffold(
    appBar: AppBar(
      title: Text(famiDetails.name),
    ),
    body: Column(
      children: [
        const SizedBox(height: 20),
        Center(
          child: CircleAvatar(
            radius: 100,
            backgroundImage: (famiDetails.picture),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              border:
              Border(bottom: BorderSide(width: 2, color: Colors.grey))),
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
              ),
              const Text('Name'),
              const Padding(
                padding: EdgeInsets.only(right: 100.0),
              ),
              Text(':${famiDetails.name}'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              border:
              Border(bottom: BorderSide(width: 2, color: Colors.grey))),
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
              ),
              const Text('Relationship'),
              const Padding(
                padding: EdgeInsets.only(right: 61.0),
              ),
              Text(': ${famiDetails.relationship}'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              border:
              Border(bottom: BorderSide(width: 2, color: Colors.grey))),
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
              ),
              const Text('Occupation'),
              const Padding(
                padding: EdgeInsets.only(right: 66.0),
              ),
              Text(': ${famiDetails.occupation}'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              border:
              Border(bottom: BorderSide(width: 2, color: Colors.grey))),
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
              ),
              const Text('Birthday'),
              const Padding(
                padding: EdgeInsets.only(right: 87.0),
              ),
              Text(': ${famiDetails.birthday}'),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: const BoxDecoration(
              border:
              Border(bottom: BorderSide(width: 2, color: Colors.grey))),
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 2.0),
              ),
              const Text('Age'),
              const Padding(
                padding: EdgeInsets.only(right: 87.0),
              ),
              Text(': ${famiDetails.age}'),
            ],
          ),
        ),

      ],
    ),

  );
  }
}


