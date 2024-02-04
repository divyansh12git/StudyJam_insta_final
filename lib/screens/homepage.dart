import "package:app/utils/global.dart";
import "package:app/widgets/post.dart";
import "package:app/widgets/story.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBackgroundColor,
        appBar: AppBar(
          backgroundColor: darkBackgroundColor,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 35,
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                  Icon(Icons.favorite_outline, color: Colors.white, size: 26),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.message_outlined, color: Colors.white, size: 26),
                ],
              )),
        ),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                child: const Row(children: [
                   Story(
                      img:
                          "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                      username: "Divyansh"),
                  Story(
                      img:
                          "https://plus.unsplash.com/premium_photo-1664015982598-283bcdc9cae8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bWVufGVufDB8fDB8fHww",
                      username: "Steve"),
                  Story(
                      img:
                          "https://images.unsplash.com/photo-1631947430066-48c30d57b943?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Z2lybHxlbnwwfHwwfHx8MA%3D%3D",
                      username: "Juliea"),
                  Story(
                      img:
                          "https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybHxlbnwwfHwwfHx8MA%3D%3D",
                      username: "Stella"),
                ]),
              ),
            ),
            const Divider(
              thickness: 0.2,
              color: secondaryColor,
            ),
            const Post(
              username: "Divyansh Gupta",
              userurl:
                  "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
              date: '04/02/2024',
              desc: "Very Good Expierence in switzerland and see the view",
              likes: 520,
              posturl: "assets/images/post1.png",
              title: "Switzerland",
            ),
            const Post(
                date: "01/02/202",
                desc: "Very Good Expierence in switzerland and see the view",
                likes: 882,
                posturl: "assets/images/post2.jpg",
                title: "Japan",
                username: "Saksham",
                userurl:
                    "https://images.unsplash.com/photo-1508341591423-4347099e1f19?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
          ],
        )));
  }
}
