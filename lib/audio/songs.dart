const List<Song> songs = [
  Song('horro2.mp3', 'Bit Forrest', artist: 'bertz'),
  Song('horror1.mp3', 'Free Run', artist: 'TAD'),
  Song('horro_fantasy.mp3', 'Gabi ng Lagim', artist: 'Soft Opening'),
];

class Song {
  final String filename;

  final String name;

  final String? artist;

  const Song(this.filename, this.name, {this.artist});

  @override
  String toString() => 'Song<$filename>';
}
