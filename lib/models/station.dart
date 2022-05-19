import 'package:distance/distance.dart';

class Station {
  final String id;
  final String name;
  final int emptySlots;
  final int freeBikes;
  final int freeNormalBikes;
  final int freeEBikes;
  final Distance distance;
  final bool isFavorite;

  const Station({
    required this.id,
    required this.name,
    required this.emptySlots,
    required this.freeBikes,
    required this.freeNormalBikes,
    required this.freeEBikes,
    required this.distance,
    required this.isFavorite,
  });
}
