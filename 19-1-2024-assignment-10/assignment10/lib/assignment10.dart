import 'package:flutter/material.dart';

class Assignment10 extends StatefulWidget{
  const Assignment10({super.key});
  
  @override
  State<Assignment10> createState()=>_Assignment10State();

  }
  class _Assignment10State extends State<Assignment10>{

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: const Text("Hello Core2Web",
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {}, 
              ), 
          ], 
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
               child: Container(
                height: 200,
                width: 360,
                color: Colors.blue,
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
               child: Container(
                height: 200,
                width: 360,
                color: Colors.blue,
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/images/myphoto.jpg"),

                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/images/image.jpg"),
                  
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/images/image1.jpg"),
                  
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset("assets/images/images2.jpg"),
                  
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:[
                    Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 300,
                    width: 150,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network("https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                    height: 300,
                    width: 150,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network("https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                    height: 300,
                    width: 150,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    height: 300,
                    width: 150,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.network("https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    height: 300,
                    width: 150,
                    ),
                    
                  ]

                ),
              ),
              Container(
                height: 300,
                width: 300,
                // color: Colors.amber,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(
                    color: Colors.red,
                    width: 5.0,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    )
                    ),
              ),

            ],
          ),
          ),
      );
    }
  }

