import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTile extends StatelessWidget {
  final IconData tileIcon;
  final String tileTitle;
  final String tileData;
  const ProfileTile({
    super.key,
    required this.tileIcon,
    required this.tileTitle,
    required this.tileData,
  });

  @override
  Widget build(BuildContext context) {
    final pageHeight = MediaQuery.of(context).size.height;
    final pageWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          width: pageWidth * 0.9,
          height: pageHeight * 0.06,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: pageWidth * 0.04,
                ),
                child: Icon(
                  tileIcon,
                  size: pageHeight * 0.035,
                ),
              ),
              SizedBox(
                width: pageWidth * 0.02,
              ),
              Text(
                tileTitle,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(right: pageWidth * 0.01),
                child: Text(
                  tileData,
                  style: GoogleFonts.poppins(
                    color: const Color.fromARGB(255, 134, 134, 134),
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          endIndent: pageWidth * 0.05,
          indent: pageWidth * 0.05,
          color: Colors.grey,
          thickness: 0.5,
        ),
      ],
    );
  }
}
