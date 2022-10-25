import 'package:flutter/material.dart';
import 'package:innovative_task_1_group_1/martinito/martinito_fam_disp.dart';
import 'package:innovative_task_1_group_1/martinito/martinito_familia.dart';

import 'cabaluna/cabaluna_details.dart';
import 'cabaluna/cabaluna_details_display.dart';
import 'dignadice/dignadice_details.dart';
import 'dignadice/dignadice_details_display.dart';
import 'maiso/maiso_fam_det.dart';
import 'maiso/maiso_fam_det_disp.dart';
import 'virtudes/virtudes_family_details.dart';
import 'virtudes/virtudes_family_details_display.dart';

class PrimaryAppLayout extends StatefulWidget {
  const PrimaryAppLayout({Key? key}) : super(key: key);

  @override
  State<PrimaryAppLayout> createState() => _PrimaryAppLayoutState();
}

class _PrimaryAppLayoutState extends State<PrimaryAppLayout>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: CircleAvatar(
            backgroundImage: AssetImage(''),
          ),
        ),
        title: RichText(
          textAlign: TextAlign.start,
          text: const TextSpan(
              text: 'Innovative task',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '\nGroup 1',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ]
          ),
        ),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              child: Text('Nanli'),
            ),
            Tab(
              child: Text('Kyla'),
            ),
            Tab(
              child: Text('Denver'),
            ),
            Tab(
              child: Text('Dwyne'),
            ),
            Tab(
              child: Text('Roi'),
            ),
            Tab(
              child: Text('James'),
            ),
            Tab(
              child: Text('Arjay'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView.builder(
            itemCount: famList1.length,
            itemBuilder: (context, index) {
              VirtudesFamilyDetails famDetails = famList1[index];
              return Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: (famDetails.imageUrl),
                    ),
                    title: Text(famDetails.name),
                    subtitle: Text(famDetails.relationship),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  VirtudesFamilyDisplayDetails(
                                      famDetails)));
                }),
              );
            },
          ),
          ListView.builder(
            itemCount: mFam.length,
            itemBuilder: (context, index) {
              MartinitoFamilia familia = mFam[index];
              return Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: (familia.photo),
                    ),
                    title: Text(familia.name),
                    subtitle: Text(familia.relationship),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MartinitoFamDisp(
                                      familia)));
                }),
              );
            },
          ),
          ListView.builder(
            itemCount: famList2.length,
            itemBuilder: (context, index) {
              MaisoFamilyDetails famiDetails = famList2[index];
              return Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: (famiDetails.picture),
                    ),
                    title: Text(famiDetails.name),
                    subtitle: Text(famiDetails.relationship),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MaisoFamilyDisplayDetails(
                                      famiDetails)));
                }),
              );
            },
          ),
          ListView.builder(
            itemCount: famList5.length,
            itemBuilder: (context, index) {
              CabalunaFamilyDetails famDetails5 = famList5[index];
              return Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: (famDetails5.imageUrl),
                    ),
                    title: Text(famDetails5.name),
                    subtitle: Text(famDetails5.relationship),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CabalunaFamilyDisplayDetails(
                                      famDetails5)));
                }),
              );
            },
          ),
          //aaaaaaaaaaaaaaaaa
          ListView.builder(
            itemCount: famList3.length,
            itemBuilder: (context, index) {
              DignadiceFamilyDetails famDetails3 = famList3[index];
              return Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: (famDetails3.imageUrl),
                    ),
                    title: Text(famDetails3.name),
                    subtitle: Text(famDetails3.relationship),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DignadiceFamilyDisplayDetails(
                                      famDetails3)));
                    }),
              );
            },
          )
        ],
      ),
    );
  }
}
