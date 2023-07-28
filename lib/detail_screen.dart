import 'package:flutter/material.dart';
import 'package:kofhotel/constant.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen(
      {super.key,
      required this.image,
      required this.nom,
      required this.description,
      required this.price});

  final String image, nom, description;
  final int price;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nom),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark))
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Colors.white,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Réserver la chambre")],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Image.asset(widget.image),
            br2(),
            Text(
              widget.nom,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            br2(),
            Text(widget.description),
            br2(),
            Text(
              "${widget.price} FCFA / Nuit",
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w700, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
