import 'package:flutter/material.dart';
import 'package:kofhotel/constant.dart';
import 'package:kofhotel/detail_screen.dart';

class HomeSCreen extends StatefulWidget {
  const HomeSCreen({super.key});

  @override
  State<HomeSCreen> createState() => _HomeSCreenState();
}

class _HomeSCreenState extends State<HomeSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Docteur Parfait"),
        actions: [
          Image.asset(
            "assets/avatar.png",
            width: 35,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Text(
              "Nos chambres populaires",
              style: TextStyle(fontSize: 18),
            ),
            br2(),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChambrePopulaireWidget(
                    image: "assets/chambre1.jpg",
                    nom: "Chambre du Président",
                    price: 100000,
                  ),
                  ChambrePopulaireWidget(
                    image: "assets/chambre2.jpg",
                    nom: "Chambre du ministre",
                    price: 90000,
                  )
                ],
              ),
            ),
            br2(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Nos meilleures chambre",
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Voir plus",
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
            br2(),
            const MeilleurChambreWidget(
              image: "assets/chambre3.jpg",
              nom: "Chambre du député",
              description:
                  "Cette chambre est reservé uniquement aux députés de l'assemblée Nationale",
              price: 80000,
            ),
            br3(),
            const MeilleurChambreWidget(
              image: "assets/chambre1.jpg",
              nom: "Chambre du Président",
              description:
                  "Cette chambre est reservé uniquement aux présidents de la république",
              price: 100000,
            ),
            br3(),
            const MeilleurChambreWidget(
              image: "assets/chambre2.jpg",
              nom: "Chambre du Ministre",
              description: "Cette chambre est reservé uniquement aux ministres",
              price: 90000,
            ),
          ],
        ),
      ),
    );
  }
}

class MeilleurChambreWidget extends StatelessWidget {
  final String image, description, nom;
  final int price;
  const MeilleurChambreWidget({
    super.key,
    required this.image,
    required this.description,
    required this.price,
    required this.nom,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                    image: image,
                    nom: nom,
                    price: price,
                    description: description)));
      },
      child: Row(
        children: [
          Image.asset(
            image,
            width: 120,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width - 160,
            child: Column(
              children: [
                Text(
                  nom,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  description,
                  maxLines: 2,
                ),
                Text(
                  "$price FCFA / Nuit",
                  style: const TextStyle(
                      color: Colors.red, fontWeight: FontWeight.w700),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChambrePopulaireWidget extends StatelessWidget {
  final String image, nom;
  final int price;
  const ChambrePopulaireWidget({
    super.key,
    required this.image,
    required this.nom,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                    image: image,
                    nom: nom,
                    price: price,
                    description: "description")));
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: Image.asset(
              image,
              width: 230,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    nom,
                    style: const TextStyle(fontSize: 18),
                  ),
                  br3(),
                  Text(
                    "$price FCFA / Nuit",
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
