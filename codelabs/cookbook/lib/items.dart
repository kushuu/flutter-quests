// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_cookbook/examples/cupertino_download_button.dart';
import 'package:flutter_cookbook/examples/drag_and_drop.dart';
import 'package:flutter_cookbook/examples/expandable_fab.dart';
import 'package:flutter_cookbook/examples/gradient_bubbles.dart';
import 'package:flutter_cookbook/examples/instagram_filter.dart';
import 'package:flutter_cookbook/examples/parallax.dart';
import 'package:flutter_cookbook/examples/staggered_animation.dart';
import 'package:flutter_cookbook/examples/typing_indicator.dart';
import 'package:flutter_cookbook/examples/ui_loading_animation.dart';

final items = <CookbookItem>[
  CookbookItem(
    'Parallax Scrolling',
    'Scrolling',
    Recommendation.yes,
    (_) => const Scaffold(
        body: Center(child: ExampleParallax()), backgroundColor: darkBlue),
  ),
  CookbookItem('Gradient Bubbles', 'Transition', Recommendation.yes,
      (_) => const ExampleGradientBubbles()),
  CookbookItem('Download Button', 'Button', Recommendation.yes,
      (_) => const ExampleCupertinoDownloadButton()),
  CookbookItem('Instagram Camera Buttons', 'Button', Recommendation.yes,
      (_) => const ExampleInstagramFilterSelection()),
  CookbookItem('Order Food Draggable', 'UI Pattern', Recommendation.yes,
      (_) => const ExampleDragAndDrop()),
  CookbookItem('Expandable FAB', 'Button', Recommendation.yes,
      (_) => const ExampleExpandableFab()),
  CookbookItem('Staggered Animation', 'Transition', Recommendation.yes,
      (_) => const ExampleStaggeredAnimations()),
  CookbookItem('Is Typing Animation', 'Animation', Recommendation.yes,
      (_) => const ExampleIsTyping()),
  CookbookItem('UI Loading Animations', 'Utility', Recommendation.maybe,
      (_) => const ExampleUiLoadingAnimation()),
];

class CookbookItem {
  CookbookItem(this.name, this.type, this.recommendation, this.builder);

  final String name;
  final String type;
  final Recommendation recommendation;
  final WidgetBuilder builder;
}

enum Recommendation { yes, maybe, no }
