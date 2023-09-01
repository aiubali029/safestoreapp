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
            // return Container(
            //   child: SingleChildScrollView(
            //     child: Column(
            //       children: [Padding(
            //         padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             height: 200,
            //             decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(10),
            //                 color: Colors.orange),
            //             child: Padding(
            //               padding: const EdgeInsets.all(4.0),
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(10),
            //                     color: Colors.white),
            //                 child: Column(
            //                   children: [
            //                     TextFormField(
            //                       decoration: InputDecoration(
            //                           border: OutlineInputBorder(
            //                             borderRadius: BorderRadius.circular(5),
            //                           ),
            //                           hintText: "What are you looking for ?"),
            //                     ),
            //                     DropdownButtonFormField(
            //                       decoration: InputDecoration(
            //                         // enabledBorder: OutlineInputBorder(
            //                         //   //<-- SEE HERE
            //                         //   borderSide:
            //                         //       BorderSide(color: Colors.black, width: 2),
            //                         // ),
            //                         // focusedBorder: OutlineInputBorder(
            //                         //   //<-- SEE HERE
            //                         //   borderSide:
            //                         //       BorderSide(color: Colors.black, width: 2),
            //                         // ),
            //                         // filled: true,
            //                         // fillColor: Colors.greenAccent,
            //                       ),
            //                       //dropdownColor: Colors.greenAccent,
            //                       value: dropdownValue,
            //                       onChanged: (String? newValue) {
            //                         setState(() {
            //                           dropdownValue = newValue!;
            //                         });
            //                       },
            //                       items: <String>[
            //                         'Enter City',
            //                         'Dhaka',
            //                         'Rajshahi',
            //                         'Rangpur'
            //                       ].map<DropdownMenuItem<String>>((String value) {
            //                         return DropdownMenuItem<String>(
            //                           value: value,
            //                           child: Text(
            //                             value,
            //                             style: TextStyle(fontSize: 20),
            //                           ),
            //                         );
            //                       }).toList(),
            //                     ),
            //                     SizedBox(
            //                       height: 5,
            //                     ),
            //                     Container(
            //                         height: 60,
            //                         width: double.infinity,
            //                         color: Colors.blue,
            //                         child: TextButton(
            //                           onPressed: () {},
            //                           child: Text(
            //                             "Find It",
            //                             style: TextStyle(color: Colors.white),
            //                           ),
            //                         )),
            //                   ],
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         SizedBox(
            //           height: 15,
            //         ),
            //         Text(
            //           "Browse Categories",
            //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //         ),
            //         SizedBox(
            //           width: 120,
            //           child: Divider(
            //             height: 5,
            //             color: Colors.black,
            //           ),
            //         ),
            //         SizedBox(
            //           width: 90,
            //           child: Divider(
            //             height: 5,
            //             color: Colors.black,
            //           ),
            //         ),
            //         Container(
            //           height: 500,
            //           child: GridView.builder(
            //             // shrinkWrap: true,
            //               physics: NeverScrollableScrollPhysics(),
            //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //                   crossAxisCount: 3,
            //                   mainAxisExtent: 100,
            //                   crossAxisSpacing: 5,
            //                   mainAxisSpacing: 5),
            //               itemCount: data.length,
            //               itemBuilder: (context, index) {
            //                 return Container(
            //                   child: Column(
            //                     children: [
            //                       Icon(
            //                         Icons.settings,
            //                         size: 50,
            //                       ),
            //                       SizedBox(
            //                         height: 5,
            //                       ),
            //                       SizedBox(child: Text(data[index],textAlign: TextAlign.center, maxLines: 1,overflow: TextOverflow.ellipsis,))
            //                     ],
            //                   ),
            //                 );
            //               }),
            //         ),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         Text("Featured Adds"),
            //         SizedBox(
            //           width: 120,
            //           child: Divider(
            //             height: 5,
            //             color: Colors.black,
            //           ),
            //         ),
            //         SizedBox(
            //           width: 90,
            //           child: Divider(
            //             height: 5,
            //             color: Colors.black,
            //           ),
            //         ),
            //         Container(
            //           height: 250,
            //           child: CarouselSlider(items:
            //           List.generate(icons.length, (index) => Image.asset(icons[index])),
            //
            //             options: CarouselOptions(
            //               autoPlay: true,
            //
            //             ),
            //
            //
            //           ),
            //         ),
            //
            //         Text("Latest Ads"),
            //         SizedBox(
            //           width: 120,
            //           child: Divider(
            //             height: 5,
            //             color: Colors.black,
            //           ),
            //         ),
            //         SizedBox(
            //           width: 90,
            //           child: Divider(
            //             height: 5,
            //             color: Colors.black,
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.all(10.0),
            //           child: Container(
            //             height: 500,
            //             //  width: 150,
            //             child: GridView.builder(itemCount: 4,
            //               gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            //                   crossAxisCount: 2,
            //                   crossAxisSpacing: 10,
            //                   mainAxisSpacing: 5,
            //                   mainAxisExtent: 200
            //               ) ,
            //
            //               scrollDirection: Axis.horizontal,
            //               itemBuilder: (context, index) {
            //                 return Container(
            //
            //                   decoration: BoxDecoration(
            //                     //  borderRadius: BorderRadius.circular(50),
            //                       color: Colors.white.withOpacity(0.38)
            //                   ),
            //                   child: Card(
            //                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            //                     child: Column(
            //                       children: [
            //                         Container(
            //                           height: 100,
            //                           decoration: BoxDecoration(
            //                               image: DecorationImage(
            //                                 image: NetworkImage(
            //                                   'https://media.licdn.com/dms/image/D5603AQFHONg9l_JaYg/profile-displayphoto-shrink_800_800/0/1685267289329?e=2147483647&v=beta&t=Bzsy3L9Nf3ZaSR84_Ux8qQX5zg6Ct7fYqfWeF7GUHGQ',),
            //                                 fit: BoxFit.cover,
            //
            //
            //                               )
            //                           ),
            //                         ),
            //                         Container(
            //                           child: Padding(
            //                             padding: const EdgeInsets.symmetric(horizontal: 10.0),
            //                             child: Column(
            //                               children: [
            //                                 Row(
            //                                   mainAxisAlignment:
            //                                   MainAxisAlignment.spaceBetween,
            //                                   children: [
            //                                     Text(
            //                                       "BDT 120",
            //                                       style: TextStyle(
            //                                           fontSize: 24,
            //                                           color: Colors.green),
            //                                     ),
            //                                     Container(
            //                                       padding: EdgeInsets.all(5),
            //                                       height: 35,
            //                                       decoration: BoxDecoration(
            //
            //                                           borderRadius: BorderRadius.circular(50),
            //                                           color: Colors.grey
            //
            //
            //                                       ),
            //                                       child: Icon(Icons.refresh_outlined),
            //
            //                                     ),
            //                                   ],
            //                                 ),
            //                                 SizedBox(
            //                                   height: 5,
            //                                 ),
            //                                 Row(
            //                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                                   children: [
            //                                     Text(
            //                                       "Discoverd the \n undoubtable so..",
            //                                       style: TextStyle(
            //                                           fontSize: 14,
            //                                           color: Colors.black),
            //                                     ),
            //                                     Container(
            //                                         padding: EdgeInsets.all(5),
            //                                         height: 35,
            //                                         decoration: BoxDecoration(
            //
            //                                             borderRadius: BorderRadius.circular(50),
            //                                             color: Colors.grey
            //
            //
            //                                         ),
            //                                         child: Icon(Icons.favorite)),
            //                                   ],
            //                                 ),
            //                                 SizedBox(
            //                                   height: 5,
            //                                 ),
            //                                 Row(
            //                                   children: [
            //                                     Icon(
            //                                       Icons.location_city,
            //                                     ),
            //                                     Text("Mohakhali")
            //                                   ],
            //                                 )
            //                               ],
            //                             ),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 );
            //
            //               },
            //
            //
            //
            //             ),
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // );

            return Center(child: Text("Hello"),);
          }
          else if(snapshot.connectionState == ConnectionState.waiting){

            return Center(child: CircularProgressIndicator());

          }

          else if(snapshot.hasError){
            return Center(child: Text("Error"));
          }
          else {
            return SizedBox();
          }
        }
      ),
    );
  }
}
