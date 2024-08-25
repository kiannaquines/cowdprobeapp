import 'package:crowdapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:crowdapp/models/export_models.dart';
import 'package:crowdapp/widgets/export_widgets.dart';

class SectionsPage extends StatefulWidget {
  const SectionsPage({super.key});

  @override
  State<SectionsPage> createState() => _SectionsPageState();
}

class _SectionsPageState extends State<SectionsPage> {
  bool _isLoading = true;
  final List<SectionData> sections = [
    SectionData(
      name: 'Reference Section',
      status: 'Congested',
      imageUrl:
          'https://images.unsplash.com/photo-1604866830893-c13cafa515d5?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 5,
    ),
    SectionData(
      name: 'Filipiniana Section',
      status: 'Spacious',
      imageUrl:
          'https://images.unsplash.com/photo-1580537659466-0a9bfa916a54?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 2,
    ),
    SectionData(
      name: 'Medical Section',
      status: 'Spacious',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1703701579680-3b4c2761aa47?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 5,
    ),
    SectionData(
      name: 'Information Technology',
      status: 'Congested',
      imageUrl:
          'https://images.unsplash.com/photo-1631434223593-019f363c02dd?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 4,
    ),
    SectionData(
      name: 'Publication Section',
      status: 'Congested',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1706061120861-6435bc850a31?q=80&w=1632&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 3,
    ),
    SectionData(
      name: 'Serials Section',
      status: 'Spacious',
      imageUrl:
          'https://images.unsplash.com/photo-1520140456651-4a1b613dfb56?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      rating: 4,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(
        title: 'Library Sections',
        textColor: AppColors.grey600,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.pallete800,
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 20.0,
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
        bottomLeft: Radius.circular(5.0),
        bottomRight: Radius.circular(5.0),
      ),
      child: Container(
        color: AppColors.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(5.0),
                  bottom: Radius.circular(5.0),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      sectionData.imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        } else {
                          return Center(
                            child: CircularProgressIndicator(
                              color: AppColors.pallete800,
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      (loadingProgress.expectedTotalBytes ?? 1)
                                  : null,
                            ),
                          );
                        }
                      },
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            AppColors.grey800.withOpacity(0.3),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.pallete800.withOpacity(0.8),
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(5.0),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4.0,
                          vertical: 2.0,
                        ),
                        child: Text(
                          'Most Visited',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: AppColors.backgroundColor,
                            fontSize: 8,
                            fontWeight: FontWeight.w500,
                          ),
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
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey600,
                    ),
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    'KEPLRC Library Facilities',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontSize: 10.0,
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
                      Radius.circular(
                        2.0,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: sectionData.status == 'Spacious'
                            ? AppColors.pallete700
                            : Colors.red,
                      ),
                      child: Text(
                        sectionData.status,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontSize: 10.0,
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
                        child: const Text(
                          '5 Likes',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: AppColors.grey600,
                          ),
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
