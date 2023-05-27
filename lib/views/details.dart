import 'package:firebase_core/firebase_core.dart';
import 'package:cereusfirebase/models/firebaseplant.dart';
import 'package:flutter/material.dart';

import '../shared/firestore.dart';

class PlantsScreen extends StatefulWidget {
  const PlantsScreen({super.key});

  @override
  State<PlantsScreen> createState() => _PlantsScreenState();
}

class _PlantsScreenState extends State<PlantsScreen> {
  FirestoreData? fireData;

  List<CereusFirebase>? cereusPlants;
  String error = "";

  @override
  void initState() {
    super.initState();
    fireData = FirestoreData();
    // cereusPlants = List.empty(growable: true);
    // fireData!.getPlants().then((res) {
    //   if (res != null) {
    //     error = "";
    //     cereusPlants!.addAll(res);
    //     setState(() {});
    //   } else {
    //     error = "Cannot fetch data due to error";
    //     setState(() {});
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cereus Plants"),
      ),

      body: FutureBuilder(
        future: fireData!.getPlants(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data);
            //  return Container();
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>
                  _buildPlantTile(snapshot.data![index]),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const Text("Cannot fetch data due to error");
          }
        },
      ),

      // Or render directly without FutureBuilder
      // assuming the you've fetched the data on initState
      // body: ListView.builder(
      //   itemCount: aquaPlants?.length,
      //   itemBuilder: (context, index) => _buildPlantTile(aquaPlants![index]),
      // ),
    );
  }

  Widget _buildPlantTile(CereusFirebase plant) {
    return ListTile(
      leading: Image.network(plant.imageurl),
      title: Text(plant.scientificname),
      subtitle: Text(plant.description),
    );
  }
}
