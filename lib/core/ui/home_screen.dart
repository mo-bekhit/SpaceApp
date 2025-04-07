import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/core/ui/Planet_Details.dart';
import 'package:untitled/core/ui/data.dart';

import 'package:untitled/core/utils/app_colors.dart';

class HomeScreen extends StatefulWidget{

  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentPage = 0 ;

  List<data> thedata =[
    data(
        planetImage:"assets/images/sun.png",
        planetname:"Sun",
        Title:"The Sun: Our Solar System's Star",
        About: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
        KM: "Distance from Sun (km) : 0",
        hours: "0",
        years: "0",
        Radius: "695700",
        Mass: "1.989 × 10³⁰",
        Gravity: "274",
        Area: "6.09 × 10¹²",
        D: "assets/images/sun.png"
    ),
    data(
        planetImage:"assets/images/mercury.png",
        planetname:"Mercury",
        Title:"Mercury: The Closest Planet",
        About: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
        KM: "Distance from Sun (km) : 57909227",
        hours: "1407.6",
        years: "0.24",
        Radius: "2439.7",
        Mass: "3.301 × 10²³",
        Gravity: "3.7",
        Area: "7.48 × 10⁷",
      D: "assets/images/mercury.glb"
    ),
    data(
      planetImage:"assets/images/venus.png",
      planetname:"Venus",
      Title:"The Sun: Our Solar System's Star",
      About: "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
      KM: "Distance from Sun (km) : 108209072",
      hours: "5832.2",
      years: "0.62",
      Radius: "6051.8",
      Mass: "1.989 × 10³⁰",
      Gravity: "274",
      Area: "6.09 × 10¹²",
      D: "assets/images/venus.glb"
    ),
    data(
        planetImage:"assets/images/earth 1.png",
        planetname:"Earth",
        Title:"Mercury: The Closest Planet",
About: "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
        KM: "Distance from Sun (km) : 149598026",
        hours: "23.93",
        years: "1",
        Radius: "6371",
        Mass: "3.301 × 10²³",
        Gravity: "3.7",
        Area: "7.48 × 10⁷",
      D: "assets/images/earth.glb"
    ),
    data(
        planetImage:"assets/images/mars (1).png",
        planetname:"Mars",
      Title:"Mercury: The Closest Planet",
About: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      KM: "Distance from Sun (km) : 227943824",
      hours: "24.62",
      years: "1.88",
      Radius: "2439.7",
      Mass: "3.301 × 10²³",
      Gravity: "3.7",
      Area: "7.48 × 10⁷",
      D: "assets/images/mars.glb"
    ),
    data(
        planetImage:"assets/images/jupiter.png",
        planetname:"Jupiter",
      Title:"Mercury: The Closest Planet",
About: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      KM: "Distance from Sun (km) : 778547669",
      hours: "1407.6",
      years: "11.86",
      Radius: "2439.7",
      Mass: "3.301 × 10²³",
      Gravity: "3.7",
      Area: "7.48 × 10⁷",
      D: "assets/images/jupiter.glb"
    ),
    data(planetImage:"assets/images/saturn.png",
        planetname:"Saturn",
      Title:"Mercury: The Closest Planet",
About: "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
        KM: "Distance from Sun (km) : 1426666422",
      hours: "10.66",
      years: "29.46",
      Radius: "2439.7",
      Mass: "3.301 × 10²³",
      Gravity: "3.7",
      Area: "7.48 × 10⁷",
      D:"assets/images/saturn.glb"
    ),
    data(
        planetImage:"assets/images/uranus.png",
        planetname:"Uranus",
      Title:"Mercury: The Closest Planet",
About: "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      KM: "Distance from Sun (km) : 2870990000",
      hours: "17.24",
      years: "84.01",
      Radius: "2439.7",
      Mass: "3.301 × 10²³",
      Gravity: "3.7",
      Area: "7.48 × 10⁷",
      D: "assets/images/uranus.glb"
    ),
    data(
        planetImage:"assets/images/neptune.png",
        planetname:"Neptune",
      Title:"Mercury: The Closest Planet",
About: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      KM: "Distance from Sun (km) : 4498252900",
      hours: "16.11",
      years: "164.8",
      Radius: "2439.7",
      Mass: "3.301 × 10²³",
      Gravity: "3.7",
      Area: "7.48 × 10⁷",
      D: "assets/images/neptune.glb"
    ),
  ];

  final PageController pageController = PageController();


  void _nextPage() {
    if (currentPage < thedata.length ) {
      pageController.animateToPage(
        currentPage + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevPage() {
    if (currentPage > 0) {
      pageController.animateToPage(
        currentPage - 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }


  void _goToDetailsScreen() {
    final data selectedData = thedata[currentPage];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Planetdetails(vdata: selectedData),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appColor.black,
        body:Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/Rectangle 4.png"),
                Image.asset("assets/images/Rectangle 5.png"),
                Column(
                  children: [
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(left: 10,top: 26),
                        width: 100,
                        child: Text("Exblore",
                          style: TextStyle(color: Color(0xffFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100,),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 290,
                      child: Text("Which planetwould you like to explore?",
                        style: TextStyle(color: Color(0xffFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                )
              ]
            ),
            Expanded(
        child: Column(
          children: [
            Container(
                height: 300,
                child:PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemCount: thedata.length,
                  itemBuilder: (context, index ) {
                    return Image.asset(thedata[index].planetImage);
                  },
                ),
            ),
            Container(
              margin: EdgeInsets.all(14),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appColor.Red,
                    ),
                    child:IconButton(onPressed:_prevPage,
                      icon:SvgPicture.asset("assets/images/Arrow 3.svg",width:16,),)  ,
                  ),
                  Text(thedata[currentPage].planetname,
                    style: TextStyle(
                      color:Color(0xffFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appColor.Red,
                    ),
                    child:IconButton(onPressed:_nextPage,
                      icon:SvgPicture.asset("assets/images/Arrow 1.svg",width:16,),)  ,
                  ),                    ],
              ),
            ),
            Container(
              decoration:BoxDecoration(color: appColor.Red,borderRadius:BorderRadius.circular(29)),
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(15),
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore ${thedata[currentPage].planetname}",
                    style: TextStyle(
                      color:Color(0xffFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(onPressed:_goToDetailsScreen,
                    icon:SvgPicture.asset("assets/images/Arrow 1.svg",width:16,),)
                    ],
                  ),
                ),
              ],
             ),
            ),
          ],
        ),
      ),
    );
  }
}