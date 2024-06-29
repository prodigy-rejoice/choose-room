import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:room_ui/stuff/choose-room.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconSize: 35,
        unselectedItemColor: const Color(0xff04004F),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Color(0xff04004F)),
        selectedItemColor: const Color(0xff000050),
        selectedLabelStyle: const TextStyle(color: Color(0xff000050)),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined), label: "services"),
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_outlined), label: "My History"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined), label: "profile"),
        ],
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 20,
        ),
        title: Center(
          child: Text("Choose a Room",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 21))),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.doorbell_rounded,
              color: Color(0xff000050),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.grid_view_outlined,
              color: Color(0xff000050),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),
        child: Center(
          child: Column(
            children: [
              Text(
                "Regal Hub",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: const Color(0xff737380)),
              ),
              const SizedBox(height: 10),
              Text(
                "victoria Island, Lagos",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: const Color(0xff737380)),
              ),
              const SizedBox(height: 55),
              const ChooseRoom(
                  image: "assets/images/room.png",
                  title: "Conference room",
                  description:
                      "Conference room with comfortable ergonomic chairs",
                  price: "# 25,000"),
              const SizedBox(height: 20),
              const ChooseRoom(
                  image: "assets/images/room.png",
                  title: "Coffee room",
                  description:
                      "Conference room with comfortable ergonomic chairs",
                  price: "# 25,000"),
            ],
          ),
        ),
      ),
    );
  }
}
