import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: 100.0,
          ),
          Icon(
            Icons.favorite_rounded,
            color: Colors.white,
          ),
          const SizedBox(width: 10.0),
          Text(
            'S H R A V A  N',
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 18.0),
          ),
          const SizedBox(
            width: 250.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderNav(
                selected: true,
                text: 'Home',
              ),
              const SizedBox(
                width: 40.0,
              ),
              HeaderNav(
                selected: false,
                text: 'Find a Team',
              ),
              const SizedBox(
                width: 40.0,
              ),
              HeaderNav(
                selected: false,
                text: 'Publish a Project',
              ),
              SizedBox(width: 40.0),
              HeaderNav(
                selected: false,
                text: 'About',
              ),
              const SizedBox(width: 250),
              Row(
                children: [
                  Text(
                    'SignUp',
                    style: GoogleFonts.nunito(
                      fontSize: 13.0,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 10.0,
              ),
              Container(
                height: 20.0,
                width: 1.0,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                'Log In',
                style: GoogleFonts.nunito(
                  fontSize: 13.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  final String? text;
  bool selected = false;
  HeaderNav({this.text, required this.selected});

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text.toString(),
          style: GoogleFonts.nunito(
            fontSize: 13.0,
            color: Colors.white,
          ),
        ),
        widget.selected
            ? SizedBox(
                height: 5.0,
              )
            : SizedBox(),
        widget.selected
            ? CircleAvatar(
                backgroundColor: Colors.white,
                radius: 2.0,
              )
            : SizedBox(),
      ],
    );
  }
}
