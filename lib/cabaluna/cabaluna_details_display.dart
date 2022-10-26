import 'package:flutter/material.dart';
import 'package:innovative_task_1_group_1/cabaluna/cabaluna_details.dart';

class CabalunaFamilyDisplayDetails extends StatelessWidget {
  final CabalunaFamilyDetails famDetails5;

  const CabalunaFamilyDisplayDetails(this.famDetails5, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(famDetails5.name),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/poly_wallpaper.jpg'),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(2.0, 4.0),
                      blurRadius: 8.0,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: (famDetails5.imageUrl),
                ),
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
                  Text(':${famDetails5.name}'),
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
                  Text(': ${famDetails5.relationship}'),
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
                  Text(': ${famDetails5.occupation}'),
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
                  Text(': ${famDetails5.birthday}'),
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
                    padding: EdgeInsets.only(right: 114.0),
                  ),
                  Text(': ${famDetails5.age}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
