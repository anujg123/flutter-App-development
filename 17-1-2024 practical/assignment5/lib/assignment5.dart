import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool _isLiked = false;
  bool _pratiklike= false;
  bool _brolike= false;
  bool _rohanlike= false;
  // bool _isClick = false;
  // bool _ispress = false;
  bool _onclick = false;
  // bool _inclick = false;
  bool _onclicked = false;
  bool _click = false;
  int _likeCount = 600;
  int _likec=550;
  int _likeco=465;
  int _likecou=420;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        ),
        actions: [
          const Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
          IconButton(
            color: Colors.white,
            icon: const Icon(Icons.message_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 2,
                            ),
                          ),
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("assets/images/myphoto.jpg"),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue,
                                ),
                              child: const Icon(
                                Icons.add_rounded,
                                size: 20,
                                color: Colors.white,
                                
                              ),    
                              ),
                            ),
                          ],
                        ),
                        ),
                        const Text(
                          "Your Story",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          padding:const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 2,
                            ),
                          ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            "assets/images/rohanphoto.jpg",
                          ),
                        ),
                        ),
                        const Text(
                          "rohan_todkar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          padding:const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 2,
                            ),
                          ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            "assets/images/brophoto.jpg",
                          ),
                        ),
                        ),
                        const Text(
                          "aniket_ghorpade",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          padding:const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 2,
                            ),
                          ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            "assets/images/pratikphoto.jpg",
                          ),
                        ),
                        ),
                        const Text(
                          "pratik_raskar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          padding:const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 2,
                            ),
                          ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "data:image/jpeg;base64,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",
                          ),
                        ),
                        ),
                        const Text(
                          "pravin_patole",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        Text("clicked");
                      },
                    child: Column(
                      children: [
                        Container(
                          padding:const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 2,
                            ),
                          ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            "assets/images/bapuphoto.jpg",
                          ),
                        ),
                        ),
                        const Text(
                          "gajanan_ghorpade",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          padding:const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 2,
                            ),
                          ),
                        child: const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "data:image/jpeg;base64,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",
                          ),
                        ),
                        ),
                        const Text(
                          "hindkesri_pradhan",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  CircleAvatar(
                    // radius: 30,
                    backgroundImage: AssetImage(
                      "assets/images/bapuphoto.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "gajanan_ghorpade",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 500,
                child: Image.asset(
                  "assets/images/bapuphoto.jpg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: _isLiked
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        _isLiked = !_isLiked;
                        _likeCount += _isLiked ? 1 : -1;
                      });
                    },
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment,
                      
                    ),
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    color: Colors.white,
                    icon: _onclick
                        ? const Icon(
                            Icons.bookmark,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.bookmark_border_outlined,
                          ),
                    onPressed: () {
                      setState(() {
                        _onclick = !_onclick;
                      });
                    },
                  ),
                ],
              ),
              Text(
                "Liked by aniket_ghorpade and $_likeCount others",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "View all 40 Comments",
                style: TextStyle(color: Colors.grey),
              ),
              const Text(
                "aniket_ghorpade  #support System",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text("29 minutes ago",
              style: TextStyle(
                color: Colors.white,
              ),),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  CircleAvatar(
                    // radius: 30,
                    backgroundImage: AssetImage(
                      "assets/images/pratikphoto.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "pratik_raskar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 600,
                child: Image.asset(
                  "assets/images/pratikphoto.jpg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: _pratiklike
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        _pratiklike =! _pratiklike;
                        _likec += _pratiklike ? 1 : -1;
                      });
                    },
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment,
                    ),
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    color: Colors.white,
                    icon: _onclick
                        ? const Icon(
                            Icons.bookmark,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.bookmark_border_outlined,
                          ),
                    onPressed: () {
                      setState(() {
                        _onclick = !_onclick;
                      });
                    },
                  ),
                ],
              ),
              Text(
                " Liked by rohan_todkar and $_likec others",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "View all 65 Comments",
                style: TextStyle(color: Colors.grey),
              ),
              const Text(
                "aniket_ghorpade  kdk bro ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text("2 hours ago",
              style: TextStyle(
                color: Colors.white,
              ),),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  CircleAvatar(
                    // radius: 30,
                    backgroundImage: AssetImage(
                      "assets/images/brophoto.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "aniket_ghorpade",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 600,
                child: Image.network(
                  "assets/images/brophoto.jpg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                // color: Colors.yellow,
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: _brolike
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(Icons.favorite_border),
                    onPressed: () {
                      setState(() {
                        _brolike= !_brolike;
                        _likeco += _brolike ? 1 : -1;
                      });
                    },
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment,
                    ),
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    color: Colors.white,
                    icon: _onclicked
                        ? const Icon(
                            Icons.bookmark,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.bookmark_border_outlined,
                          ),
                    onPressed: () {
                      setState(() {
                        _onclicked = !_onclicked;
                      });
                    },
                  ),
                ],
              ),
              Text(
                "Liked by pratik_raskar and $_likeco others",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "View all 55 Comments",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                "pratik_raskar kdk bro",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text("10 minutes ago",
              style: TextStyle(
                color: Colors.white,
              ),),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  CircleAvatar(
                    // radius: 30,
                    backgroundImage: AssetImage(
                      "assets/images/rohanphoto.jpg",
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "rohan_todkar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 600,
                child: Image.network(
                  "assets/images/rohanphoto.jpg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                //   // color: Colors.yellow,
              ),
              Row(
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: _rohanlike
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                    onPressed: () {
                      setState(() {
                        _rohanlike = !_rohanlike;
                        _likecou += _rohanlike ? 1 : -1;
                      });
                    },
                  ),
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    color: Colors.white,
                    icon: _click
                        ? const Icon(
                            Icons.bookmark,
                            color: Colors.black,
                          )
                        : const Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.white,
                          ),
                    onPressed: () {
                      setState(() {
                        _click = !_click;
                      });
                    },
                  ),
                ],
              ),
              Text(
                "Liked by aniket_ghorpade and $_likecou other",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "View all 110 Comments",
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                "pratik_raskar  kdk bro",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text("2 days ago",
              style: TextStyle(
                color: Colors.white,
              ),),
            ],
          ),
        ]),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box,
                ),
                label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),
                label: 'Like'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
