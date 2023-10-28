import 'package:flutter/material.dart';
import 'package:appflutter/model/character.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 180,
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        children: [
          Image.asset(character.image, width: 50, height: 150),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                character.name,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -2,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: character.stars >= 4
                          ? Colors.green[800]
                          : Colors.indigo[300],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.0)),
                    ),
                    child: Center(
                      child: Text(
                        character.stars.toString(),
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          letterSpacing: -1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Text(
                    character.jobTitle,
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 20,
                      letterSpacing: -1,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
