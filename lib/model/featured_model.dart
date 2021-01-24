class FeaturedModel {
  int imageCount;
  List<String> images;
  String category;
  String description;
  List<String> tags;

  FeaturedModel(
      {this.imageCount,
        this.images,
        this.category,
        this.description,
        this.tags});
}

var featuredModelList = [FeaturedModel(
    imageCount: 25,
    images: ["google.com"],
    category: "Sunny beach",
    description: "Curated by landscap",
    tags: ["Wave", "Sea", "Wallpaper"])];
