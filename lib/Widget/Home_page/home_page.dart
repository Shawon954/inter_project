
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var customsize, height, width;

  List<String> IMAGELINKVartical = [
    'assets/hori_icon/yellow.svg',
  'assets/hori_icon/yellow.svg',
  'assets/hori_icon/yellow.svg',

  ];
  List<String> IMAGELINK = [
    'assets/hori_icon/yellow.svg',
    'assets/hori_icon/green.svg',
    'assets/hori_icon/blue.svg',
  ];
  List<String> TiTle = ['Online Class Routine', 'Office Work List', 'Day Task'];
  List<String> SUBTITLE = [
    'Save Date: 10/12/2022',
    'Save Date: 15/12/2022',
    'Save Date: 20/12/2022'
  ];

  @override
  Widget build(BuildContext context) {
    customsize = MediaQuery.of(context).size;
    height = customsize.height;
    width = customsize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Column(
          children: [
            Stack(
                alignment: Alignment(-1.0,1.4),
                clipBehavior: Clip.none,

                children: [
                  Container(
                    height: height / 2,
                    width: width,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(3, 06),
                          end: Alignment(0.6, 0.6),
                          stops: [
                            0.4,
                            0.9,
                          ],
                          tileMode: TileMode.mirror,
                          colors: [
                            Color(0xe061d48c),
                            Color(0xff0a4b3c),
                            // Color(0xff074e3b),
                          ],
                        ),
                        // color: Color(0xd85891b9),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi, Habib 👋',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        fontFamily: 'Inter-Regular.ttf'),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    'Let’s explore your notes',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontFamily: 'Inter-Regular.ttf'),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 40,
                                child: Image.asset('assets/image/profile.png'),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              border:
                                  Border.all(color: Colors.white30, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome to TickTick Task',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      fontFamily: 'Inter-Regular.ttf'),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Your one-stop app for task management. Simplify,\ntrack, and accomplish tasks with ease.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: 'Inter-Regular.ttf'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Color(0xf529cbb0),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30)),
                                          border: Border.all(
                                              color: Colors.white60, width: 2)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.play_arrow_sharp,
                                            size: 35,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Watch Video',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                fontFamily:
                                                    'Inter-Regular.ttf'),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Container(
                                        height: 100,
                                        width: 100,
                                        child: SvgPicture.asset(
                                          'assets/image/banner.svg',
                                          height: 80,
                                          width: 80,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Reminder Task',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    fontFamily: 'Inter-Regular.ttf'),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                'See All',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    fontFamily: 'Inter-Regular.ttf'),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 120,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: TiTle.length,
                          itemBuilder: (_, index) {
                            return Container(
                              height: 100,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              margin: EdgeInsets.all(8),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      IMAGELINK[index],
                                      height: 40,
                                      width: 40,
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      TiTle[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      SUBTITLE[index],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ]),
            SizedBox(
              height: 65,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Tasks",
                      style: TextStyle(
                          color: Color(0xff042E2B),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Inter-Regular.ttf'),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Color(0xff042E2B),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: 'Inter-Regular.ttf'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 10),
              child: Container(
                height: height / 3.7,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: TiTle.length,
                    itemBuilder: (_, index) {
                      return Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        margin: EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 8, left: 5),
                                child: SvgPicture.asset(
                                  IMAGELINKVartical[index],
                                  height: 45,
                                  width: 45,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    TiTle[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    SUBTITLE[index],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
