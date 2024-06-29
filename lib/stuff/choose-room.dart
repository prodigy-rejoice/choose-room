import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseRoom extends StatelessWidget {
  const ChooseRoom(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.price});
  final String image;
  final String title;
  final String description;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 5),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border(
              top: BorderSide(width: 0.3, color: Colors.black12),
              left: BorderSide(width: 0.3, color: Colors.black12),
              bottom: BorderSide(width: 0.3, color: Colors.black12),
              right: BorderSide(width: 0.3, color: Colors.black12)),
          color: Color(0xffFFFFFF)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                fontSize: 25,
                                color: Color(0xff000050),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      description,
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff737380),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Color(0xff000050),
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width: 85,
                          height: 25,
                          child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff000050))),
                              child: Row(
                                children: [
                                  Text(
                                    "Choose room ",
                                    style: GoogleFonts.poppins(
                                        color: const Color(0XFFFFFFFF),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8),
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_sharp,
                                    size: 10,
                                    color: Color(0xffFFFFFF),
                                  )
                                ],
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
