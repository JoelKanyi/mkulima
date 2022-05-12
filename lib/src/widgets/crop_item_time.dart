import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mkulima/src/model/cat.dart';
import 'package:mkulima/src/model/item.dart';

class CropItemTile extends StatelessWidget {
  //final Item item;
  final Cat cat;

  CropItemTile(this.cat);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: CachedNetworkImage(
                      imageUrl: cat.image!.url!, fit: BoxFit.cover),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 30,
                        width: 30,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 224, 220, 220),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.pink,
                        ),
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(8, 5, 8, 0),
                child: Text(
                  "${cat.name!} Maize corns",
                  maxLines: 2,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(8, 5, 8, 0),
                child: Text(
                  "${cat.countryCode!} Maize corns",
                  maxLines: 2,
                  style: const TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 5, 8, 0),
              child: Text(
                "Ksh ${cat.energyLevel}",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
            )
          ],
        ),
      ),
    );
  }
}
