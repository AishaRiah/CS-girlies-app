class StoryChapter {
  final String title;
  final String content;

  StoryChapter({required this.title, required this.content});
}

class Storyline {
  static List<StoryChapter> chapters = [
    StoryChapter(
      title: "Chapter 1",
      content: "The beginning of the story...",
    ),
  ];
}