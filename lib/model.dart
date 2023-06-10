import 'package:objectbox/objectbox.dart';

@Entity()
class Song {
  @Id()
  int id = 0;

  String title;
  String lyrics;
  String? link;

  final book = ToOne<Book>();

  Song(this.title, this.lyrics, {this.link, this.id = 0});
}

@Entity()
class Book {
  @Id()
  int id = 0;

  String title;
  final songs = ToMany<Song>();

  Book(this.title, {this.id = 0});
}
