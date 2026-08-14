class DetailLink {
  const DetailLink(this.label, this.url);

  final String label;
  final String url;
}

class PortfolioDetail {
  const PortfolioDetail({
    required this.title,
    required this.role,
    required this.dates,
    required this.overview,
    required this.technologies,
    required this.highlights,
    this.imageAsset,
    this.links = const [],
  });

  final String title;
  final String role;
  final String dates;
  final String overview;
  final List<String> technologies;
  final List<String> highlights;
  final String? imageAsset;
  final List<DetailLink> links;
}
