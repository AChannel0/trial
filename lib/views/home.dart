import 'package:cereusfirebase/models/cereusplant.dart';
import 'package:flutter/material.dart';
import 'package:cereusfirebase/views/app_drawer.dart';
// import 'package:cereusfirebase/views/text_layout.dart';
import 'package:cereusfirebase/views/details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<CereusPlant> _collection = [
    CereusPlant(
        localName: 'EPIPHYLLUM OXYPETALUM',
        descriptionplant:
            'Also known as the Queen of the Night, is a night-blooming cactus with fragrant white flowers that only bloom once a year.',
        imageUrl: 'assets/1.png'),
    CereusPlant(
        localName: 'SELENICEREUS GRANDIFLORUS',
        descriptionplant:
            'The large-flowered torch cactus, produces large, fragrant, white flowers that open at night and last only one night.',
        imageUrl: 'assets/2.png'),
    CereusPlant(
        localName: 'HYLOCEREUS UNDATUS',
        descriptionplant:
            'Also known as the Dragon fruit or Pitahaya, is a climbing cactus with sweet, juicy, and refreshing fruit that has a unique appearance',
        imageUrl: 'assets/3.png'),
    CereusPlant(
        localName: 'CEREUS PERUVIANUS',
        descriptionplant:
            'Also known as the Peruvian apple cactus, is a large, columnar cactus with nocturnal white flowers and edible fruits.',
        imageUrl: 'assets/4.png'),
    CereusPlant(
        localName: 'EPIPHYLLUM CRENATUM',
        descriptionplant:
            'A very popular and well-known species with robust stems, leaf-like in appearance and with margins notched or scalloped.',
        imageUrl: 'assets/5.png'),
    CereusPlant(
        localName: 'HYLOCEREUS POLYRHIZUS',
        descriptionplant:
            'A species of cactus that has red skin and red flesh fruit, also known as dragon fruit or Selenicereus. It is a succulent plant that grows in warm climates and has spines on the stem and leaves.',
        imageUrl: 'assets/6.png'),
    CereusPlant(
        localName: 'EPIPHYLLUM HOOKERI',
        descriptionplant:
            'Known to be a climbing cactus that grows abundant foliage of long and strappy, yet sturdy, leaves.',
        imageUrl: 'assets/7.png'),
    CereusPlant(
        localName: 'PENIOCEREUS GREGGII',
        descriptionplant:
            'This plant is commonly known as the Arizona Queen of the Night. They have a large underground tuber, thin and inconspicuous stems.',
        imageUrl: 'assets/8.png'),
    CereusPlant(
        localName: 'EPIPHYLLUM PHYLLANTHUS',
        descriptionplant:
            'Known as the climbing cactus, is a species of epiphytic cacti. It has no leaves, instead having stems that photosynthesise.',
        imageUrl: 'assets/9.png'),
    CereusPlant(
        localName: 'CEREUS HILDMANNIANUS',
        descriptionplant:
            'Produces beautiful white flowers and have a sweet fragrance. The flowers can reach up to 15cm in diameter and are followed by reddish-purple fruits that are edible but not commonly consumed.',
        imageUrl: 'assets/10.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 10, 19),
        title: const Text('Cereus',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            )),
        actions: <Widget>[],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Padding(
                padding:
                    EdgeInsets.only(left: 20, bottom: 0, right: 0, top: 20),
                child: Text(
                  'CEREUS',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: 'CrimsonText',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10, right: 20, top: 0),
              child: Text(
                "NIGHT BLOOMING CACTI PLANTS",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: 'CrimsonText',
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search,
                      color: Color.fromARGB(255, 249, 252, 255)),
                  hintText: 'Search Collections',
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 167, 183, 197),
                    fontSize: 16.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: _collection.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final item = _collection[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlantsScreen(),
                        ),
                      );
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Image.asset(
                              item.imageUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              item.localName,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, bottom: 10, right: 10, top: 0),
                            child: Text(
                              item.descriptionplant,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 167, 183, 197),
                                fontSize: 11.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
