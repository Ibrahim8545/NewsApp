import 'package:flutter/material.dart';

class NewsTitles extends StatelessWidget {
  const NewsTitles({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Image.network(
            'https://www.presidency.eg/media/93877/%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3-%D8%B9%D8%A8%D8%AF-%D8%A7%D9%84%D9%81%D8%AA%D8%A7%D8%AD-%D8%A7%D9%84%D8%B3%D9%8A%D8%B3%D9%8A-black-one-finljpg.jpg',
           height:200,
           width: double.infinity,
           fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
            height:12,
          ),
          const Text(
            'مصر ترا ترا مصر  مصر ترا ترا مصر مصر ترا ترا مصر مصر ترا ترا مصر مصر ترا ترا مصر مصر ترا ترا مصر مصر ترا ترا مصر مصر ترا ترا مصر مصر ترا ترا مصر مصر ترا ترا مصر مصر ترا ترا مصر ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(
            height:8,
          ),
          const Text(
            'واللي اللي اللي و اللي  واللي اللي اللي و اللي واللي اللي اللي و اللي رواللي اللي اللي و اللي واللي اللي اللي و اللي ',
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
      ],
    );
  }
}