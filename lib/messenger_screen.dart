import 'package:flutter/material.dart';
import 'package:ui_messenger/search_screen.dart';

class MessagingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 15,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage(
                'assets/person.png',
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chat",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
        actions: [
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue.shade600,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
                iconSize: 20,
                color: Colors.white,
              )),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
              radius: 20,
              backgroundColor: Colors.blue.shade600,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
                iconSize: 20,
                color: Colors.white,
              )),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // list view of story
              Container(
                height: 110,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) => buildstoryItem(),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: 20,
                  ),
                ),
              ),
              SizedBox(),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/person.png"),
              ),
              // CircleAvatar(
              //   radius: 8,
              //   backgroundColor: Colors.white,

              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 4, end: 4),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
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
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "hello my friend how are you, hello my friend how are you , hello my friend how are you ",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("11:00 AM",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buildstoryItem() => Container(
        width: 60,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/person.png"),
                ),
                // CircleAvatar(
                //   radius: 8,
                //   backgroundColor: Colors.white,
                // ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(bottom: 4, end: 4),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                )
              ],
            ),
            Text(
              "samih ahmad damaj",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}
