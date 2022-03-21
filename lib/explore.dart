import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:heroicons/heroicons.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Container(
          height: 57.6,
          margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 57.6,
                  width: 57.6,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    color: Color(0x080a0928),
                  ),
                  child: HeroIcon(HeroIcons.menu),
                ),
                Container(
                  height: 57.6,
                  width: 57.6,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    color: Color(0x080a0928),
                  ),
                  child: HeroIcon(HeroIcons.search),
                )
              ]),
        ),
        Padding(
          padding: EdgeInsets.only(top: 48, left: 28.8),
          child: Text('Explore\nthe Nature ',
              style: GoogleFonts.playfairDisplay(
                  fontSize: 45.6, fontWeight: FontWeight.w700)),
        ),
        //Custom Tab bar
        Container(
          height:30,
          margin:EdgeInsets.only(left:14.4, top:28.8),
          child: DefaultTabController(length: 4, child:TabBar(tabs:[
            Tab(
              child:Container(
                child:Text('Recommended'),
              ),
            ),
            Tab(
              child:Container(
                child:Text('Popular'),
              ),
            ),
            Tab(
              child:Container(
                child:Text('New Destination'),
              ),
            ),
            Tab(
              child:Container(
                child:Text('Adventure Sports'),
              ),
            )
            
          ]))
        )
      ],
    ))));
  }
}
