class SectionData {
  final String name;
  final String status;
  final String imageUrl;
  final int rating;

  SectionData({required this.name, required this.status, required this.imageUrl, this.rating = 0});
}

class SectionInformation {
  
  final String title;
  final String description;
  final int star;
  final int like;
  final String status;
  final String popularity;

  SectionInformation({
    required this.title,
    required this.description,
    required this.star,
    required this.like,
    required this.status,
    required this.popularity,
  });

}