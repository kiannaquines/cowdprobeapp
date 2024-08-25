import 'package:crowdapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crowdapp/models/export_models.dart';

class SectionsPage extends StatefulWidget {
  const SectionsPage({super.key});

  @override
  State<SectionsPage> createState() => _SectionsPageState();
}

class _SectionsPageState extends State<SectionsPage> {
  final List<SectionData> sections = [
    SectionData(
      name: 'Reference Section',
      imageUrl:
          'https://images.unsplash.com/photo-1604866830893-c13cafa515d5?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 5,
    ),
    SectionData(
      name: 'Filipiniana Section',
      imageUrl:
          'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 2,
    ),
    SectionData(
      name: 'Medical Section',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1703701579680-3b4c2761aa47?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 5,
    ),
    SectionData(
      name: 'Information Technology',
      imageUrl:
          'https://images.unsplash.com/photo-1631434223593-019f363c02dd?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 4,
    ),
    SectionData(
      name: 'Publication Section',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1706061120861-6435bc850a31?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 3,
    ),
    SectionData(
      name: 'Serials Section',
      imageUrl:
          'https://images.unsplash.com/photo-1520140456651-4a1b613dfb56?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Library Sections',
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 23,
                fontWeight: FontWeight.w600,
                color: AppColors.grey800,
              ),
            ),
            Text(
              "Library sections facilities",
              style: GoogleFonts.getFont(
                'Lato',
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70.0,
                decoration: const BoxDecoration(
                  color: AppColors.pallete50,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Feather.info,
                        color: AppColors.pallete700,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Please allow the app to access your\ndevice to follow your recent activity.',
                        style: GoogleFonts.getFont(
                          'Lato',
                          color: AppColors.grey800,
                          fontSize: 15.0,
                        ),
                        maxLines: 2,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: sections.length,
                itemBuilder: (context, index) {
                  return SectionItemBuilder(
                    sectionData: sections[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}

class SectionItemBuilder extends StatelessWidget {
  final SectionData sectionData;

  const SectionItemBuilder({
    super.key,
    required this.sectionData,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      ),
      child: Container(
        color: AppColors.grey100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10.0),
                  bottom: Radius.circular(10.0),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      sectionData.imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            AppColors.pallete100.withOpacity(0.3),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark,
                          color: AppColors.pallete100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sectionData.name,
                    style: GoogleFonts.lato(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey600,
                    ),
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 4.0), // Add some spacing
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0)
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(3.0),
                      decoration: const BoxDecoration(
                        color: AppColors.pallete700,
                      ),
                      child: Text(
                        'Preffered',
                        style: GoogleFonts.lato(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w600,
                          color: AppColors.backgroundColor,
                        ),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < sectionData.rating
                                ? Colors.amber
                                : Colors.grey,
                            size: 16.0,
                          );
                        }),
                      ),
                      GestureDetector(
                        child: const Icon(
                          Icons.location_pin,
                          size: 17.0,
                          color: AppColors.pallete700,
                        ),
                      )
                    ],
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
