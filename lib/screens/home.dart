import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_project/provider/home_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String dropdownValue = 'Enter City';

      List icons =[''
          'images/education.png',
          'images/customer-support.png',
          'images/calendar.png',
          'images/house.png',
          'images/playtime.png',

      ];

      List data =['Electronics','Properties','Event and Travel','Services','Kids and Babies','Online Services','Auto Mobiles','Home and Garden','Pets and Animals','Construtions','Food and Agriculture  Food and Agriculture Food and Agriculture',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Provider.of<HomeProvider>(context,listen: false).getHome(),
        builder: (context,snapshot) {
          if(snapshot.hasData){
            return Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.orange),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      hintText: "What are you looking for ?"),
                                ),
                                DropdownButtonFormField(
                                  decoration: const InputDecoration(
                                    // enabledBorder: OutlineInputBorder(
                                    //   //<-- SEE HERE
                                    //   borderSide:
                                    //       BorderSide(color: Colors.black, width: 2),
                                    // ),
                                    // focusedBorder: OutlineInputBorder(
                                    //   //<-- SEE HERE
                                    //   borderSide:
                                    //       BorderSide(color: Colors.black, width: 2),
                                    // ),
                                    // filled: true,
                                    // fillColor: Colors.greenAccent,
                                  ),
                                  //dropdownColor: Colors.greenAccent,
                                  value: dropdownValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>[
                                    'Enter City',
                                    'Dhaka',
                                    'Rajshahi',
                                    'Rangpur'
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                    );
                                  }).toList(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                    height: 60,
                                    width: double.infinity,
                                    color: Colors.blue,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Find It",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Browse Categories",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 120,
                      child: Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                      child: Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: GridView.builder(
                        // shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisExtent: 100,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5),
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                children: [
                                  const Icon(
                                    Icons.settings,
                                    size: 50,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(child: Text(data[index],textAlign: TextAlign.center, maxLines: 1,overflow: TextOverflow.ellipsis,))
                                ],
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Featured Adds"),
                    const SizedBox(
                      width: 120,
                      child: Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                      child: Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: CarouselSlider(items:
                      List.generate(icons.length, (index) => Image.asset(icons[index])),

                        options: CarouselOptions(
                          autoPlay: true,

                        ),


                      ),
                    ),

                    const Text("Latest Ads"),
                    const SizedBox(
                      width: 120,
                      child: Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                      child: Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 500,
                        //  width: 150,
                        child: GridView.builder(
                          // shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisExtent: 250,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                            ),
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return Container(

                                decoration: BoxDecoration(
                                  //  borderRadius: BorderRadius.circular(50),
                                    color: Colors.white.withOpacity(0.38)
                                ),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 120,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                'https://media.licdn.com/dms/image/D5603AQFHONg9l_JaYg/profile-displayphoto-shrink_800_800/0/1685267289329?e=2147483647&v=beta&t=Bzsy3L9Nf3ZaSR84_Ux8qQX5zg6Ct7fYqfWeF7GUHGQ',),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "BDT 120",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.green),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Text(
                                                "Discovered the \nundoubted so..",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_city,
                                                  ),
                                                  Text("Mohakhali")
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets.all(5),
                                                    height: 25,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(50),
                                                      color: Colors.grey,
                                                    ),
                                                    child: const Icon(Icons.refresh_outlined,size: 15,),
                                                  ),
                                                  SizedBox(width: 10,),
                                                  Container(
                                                    padding: const EdgeInsets.all(5),
                                                    height: 25,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(50),
                                                      color: Colors.grey,
                                                    ),
                                                    child: const Icon(Icons.favorite,size: 15,),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                              /*return Container(
                                color: Colors.red,
                                child: Column(
                                  children: [
                                    const Icon(
                                      Icons.settings,
                                      size: 50,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    SizedBox(child: Text(data[index],textAlign: TextAlign.center, maxLines: 1,overflow: TextOverflow.ellipsis,))
                                  ],
                                ),
                              );*/
                            }),
                      ),
                    )
                  ],
                ),
              ),
            );

            // return Center(child: Text("Hello"),);
          }
          else if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator());
          }

          else if(snapshot.hasError){
            return const Center(child: Text("Error"));
          }
          else {
            return const SizedBox();
          }
        }
      ),
    );
  }
}