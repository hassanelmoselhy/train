class PostEntity {
  final int id;
  final String title;
  final String body;
  final List tags;
  final List reactions;

  final String views;

  PostEntity(
      {required this.id,
      required this.title,
      required this.body,
      required this.tags,
      required this.reactions,
      required this.views});
}

/*
{
    "id": 1,
    "title": "His mother had always taught him",
    "body": "His mother had always taught him not to ever think of himself as better than others. He'd tried to live by this motto. He never looked down on those who were less fortunate or who had less money than him. But the stupidity of the group of people he was talking to made him change his mind.",
    "tags": [
        "history",
        "american",
        "crime"
    ],
    "reactions": {
        "likes": 192,
        "dislikes": 25
    },
    "views": 305,
    "userId": 121
}
*/