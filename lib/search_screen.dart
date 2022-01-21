import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: TextFormField(
          decoration: InputDecoration(
            hintText: "Search",
            border: InputBorder.none,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Suggested",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return buildSuggestItem();
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                    itemCount: 15)),
          ],
        ),
      ),
    );
  }

  Widget buildSuggestItem() => Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/person.png"),
          ),
          // CircleAvatar(
          //   radius: 8,
          //   backgroundColor: Colors.white,
          // ),

          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "samih ahmad damaj ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      );
}
