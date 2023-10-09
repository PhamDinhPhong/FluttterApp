import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:http/http.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Andy", "age": 29},
    {"id": 2, "name": "Aragon", "age": 40},
    {"id": 3, "name": "Bob", "age": 5},
    {"id": 4, "name": "Barbara", "age": 35},
    {"id": 5, "name": "Candy", "age": 21},
    {"id": 6, "name": "Colin", "age": 55},
    {"id": 7, "name": "Audra", "age": 30},
    {"id": 8, "name": "Banana", "age": 14},
    {"id": 9, "name": "Caversky", "age": 100},
    {"id": 10, "name": "Becky", "age": 32},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      _foundUsers = results;
    });
  }
  // final videoURL = 'https://www.youtube.com/watch?v=YMx8Bbev6T4';
  // late YoutubePlayerController _controller;

  // @override
  // void initState() {
  //   // final videoID = YoutubePlayer.convertUrlToId(videoURL);
  //   _controller = YoutubePlayerController(
  //       initialVideoId: 'YMx8Bbev6T4',
  //       flags: const YoutubePlayerFlags(
  //           autoPlay: false, mute: true, isLive: false));
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 375,
                  height: 140,
                  child: Image.asset('assets/images/Mask Group.png'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 83, 0, 0),
                  child: Text(
                    'Chat ',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(310, 48, 0, 0),
                  child: Image.asset(
                    'assets/images/Group 66.png',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: Colors.blue,
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: Text(
                            _foundUsers[index]["id"].toString(),
                            style: const TextStyle(
                                fontSize: 24, color: Colors.white),
                          ),
                          title: Text(_foundUsers[index]['name'],
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text(
                              '${_foundUsers[index]["age"].toString()} years old',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
      // body: Padding(
      //   padding: EdgeInsets.all(0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Stack(
      //           children: [
      //             Container(
      //               width: 375,
      //               height: 140,
      //               child: Image.asset('assets/images/Mask Group.png'),
      //             ),
      //             Container(
      //               padding: EdgeInsets.fromLTRB(10, 83, 0, 0),
      //               child: Text(
      //                 'Chat ',
      //                 style: TextStyle(
      //                   fontSize: 34,
      //                   fontWeight: FontWeight.w500,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               padding: EdgeInsets.fromLTRB(310, 48, 0, 0),
      //               child: Image.asset(
      //                 'assets/images/Group 66.png',
      //               ),
      //             )
      //           ],
      //         ),
      // Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Container(
      //       width: double.infinity,
      //       height: 40,
      //       decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(30),
      //         color: Colors.grey,
      //       ),
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Container(
      //             padding: EdgeInsets.fromLTRB(13, 0, 0, 0),
      //             child: Icon(Icons.search),
      //           ),
      //           Container(
      //               width: 300,
      //               height: 40,
      //               decoration: BoxDecoration(
      //                 border: Border.fromBorderSide(BorderSide.none),
      //               ),
      //               child: Center(
      //                   child: TextField(
      //                 textAlign: TextAlign.start,
      //                 decoration: InputDecoration(
      //                   border: InputBorder.none,
      //                   hintText: 'Search Chat',
      //                 ),
      //                 onTap: () {},
      //               )))
      //         ],
      //       ),
      //     )),

      //       ],
      //     ),
      //   ),
      // ),
    );
    // YoutubePlayerBuilder(
    //   player: YoutubePlayer(
    //     controller: _controller,
    //   ),
    //   builder: (context, player) {
    //     return Column(
    //       children: [
    //         // some widgets
    //         player
    //         //some other widgets
    //       ],
    //     );
    //   },
    // );
  }

  Future<void> searchChat() async {
    try {
      // Response response = await get(Uri.parse(''))
    } catch (e) {
      print(e.toString());
    }
  }
}
