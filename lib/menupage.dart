import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key, required this.name, required this.usia, required this.gender, required this.hewan}) : super(key: key);
  List<AssetImage> gambar = [
    AssetImage("assets/1.jpg"),
    AssetImage("assets/2.jpg"),
    AssetImage("assets/3.jpg"),
    AssetImage("assets/4.jpg"),
    AssetImage("assets/5.jpg"),
    AssetImage("assets/6.jpg"),
  ];
  final List<String> nama = [
    "rambo",
    "catty",
    "panther",
    "buto",
    "semar",
    "gareng"
  ];

  final String name;
  final String usia;
  var gender;
  var hewan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: [
          Icon(Icons.person),
        ],
        title: Text(
          "$name, $usia tahun, $gender",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: gambar[index],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          nama[index].toUpperCase(),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.thumb_up_alt),
                            Text("Like"),
                            Icon(Icons.thumb_down_alt),
                            Text("Dislike"),
                            Icon(Icons.favorite),
                            Text("Favorite"),
                          ],
                        ),
                        Container(
                          width: 220,
                          height: 55,
                          margin: const EdgeInsets.only(top: 20),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Adopsi Sekarang",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
