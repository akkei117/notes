import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive notes"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          //for Displaying the data in the UI
          FutureBuilder(
            future: Hive.openBox("details"),
            builder: (context, snapshot) {
              return Center(
                child: Text(
                  snapshot.data!.get("Age"),
                  style: TextStyle(fontSize: 40),
                ),
              );
            },
          ),

          FutureBuilder(
            future: Hive.openBox("details"),
            builder: (context, snapshot) {
              return ListTile(
                title: Text(
                  snapshot.data!.get("name") ?? " ",
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  snapshot.data!.get("Age") ?? " ",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: IconButton(onPressed: () {
                  // snapshot.data!.put("Age", "15");
                  snapshot.data!.delete("name");
                  setState(() {
                    
                  });
                }, icon: Icon(Icons.edit)),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var box = await Hive.openBox("details");

          box.put("name", "Sanidhya");
          box.put("Age", "19");
          box.put("Collage", {
            "enrollment": "0808cl241168",
            "branch": "CSE(AIML)",
            "class": "S3",
          });

          print(box.get("name"));
          print(box.get("Age"));
          print(box.get("Collage")["enrollment"]);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
