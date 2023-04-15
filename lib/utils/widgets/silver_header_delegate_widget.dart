import 'package:flutter/material.dart';

import 'appbar_wave_widget.dart';
import 'searchbar_widget.dart';

class SilverHeaderDelegateWidget extends SliverPersistentHeaderDelegate {
  const SilverHeaderDelegateWidget();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.35;
    double topPadding = MediaQuery.of(context).padding.top + 10;

    return Stack(
      children: [
        const AppBarWaveWidget(
          height: 200,
        ),
        Positioned(
          top: topPadding + offset,
          left: 16,
          right: 16,
          child: const SearchBarWidget(),
        )
      ],
    );
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
