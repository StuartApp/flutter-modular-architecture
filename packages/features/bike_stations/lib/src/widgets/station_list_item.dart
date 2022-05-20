import 'package:flutter/material.dart';

import '../extensions/distance_extension.dart';
import '../models/station.dart';

class StationListItem extends StatelessWidget {
  const StationListItem({
    Key? key,
    required this.station,
  }) : super(key: key);

  final Station station;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _buildLeading(context),
      title: Text(station.name),
      subtitle: _buildSubtitle(context),
      trailing: _buildTrailing(context),
      isThreeLine: true,
    );
  }

  Widget _buildLeading(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
          width: 40.0,
          height: 40.0,
          child: CircularProgressIndicator(
            value: 0.75,
            backgroundColor:
                Theme.of(context).backgroundColor.withOpacity(0.30),
          ),
        ),
        Text(station.freeBikes.toString()),
      ],
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSubtitleBikeCount(context),
        const SizedBox(height: 4.0),
        _buildSubtitleDistance(),
      ],
    );
  }

  Widget _buildSubtitleBikeCount(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '${station.freeEBikes} ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          const TextSpan(text: 'electric / '),
          TextSpan(
            text: '${station.freeNormalBikes} ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColorDark,
            ),
          ),
          const TextSpan(text: 'mechanical'),
        ],
      ),
    );
  }

  Widget _buildSubtitleDistance() {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(text: 'At '),
          TextSpan(
            text: station.distance.format(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildTrailing(BuildContext context) {
    return IconButton(
      icon: Icon(
        station.isFavorite ? Icons.star : Icons.star_border,
        color: station.isFavorite ? Theme.of(context).primaryColor : null,
      ),
      tooltip: station.isFavorite ? 'Unmark as favorite' : 'Mark as favorite',
      onPressed: null,
    );
  }
}
