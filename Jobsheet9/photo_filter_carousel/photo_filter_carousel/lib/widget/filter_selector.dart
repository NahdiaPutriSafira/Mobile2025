import 'package:flutter/material.dart';
import 'package:photo_filter_carousel/widget/filter_item.dart';


class FilterSelector extends StatefulWidget {
  const FilterSelector({
    super.key,
    required this.filters,
    required this.onFilterChanged,
    this.padding = const EdgeInsets.symmetric(vertical: 24),
  });

  final List<Color> filters;
  final void Function(Color selectedColor) onFilterChanged;
  final EdgeInsets padding;

  @override
  State<FilterSelector> createState() => _FilterSelectorState();
}

class _FilterSelectorState extends State<FilterSelector> {
  static const _filtersPerScreen = 5;
  static const _viewportFractionPerItem = 1.0 / _filtersPerScreen;

  late final PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: _viewportFractionPerItem);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onFilterTapped(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
    );
    widget.onFilterChanged(widget.filters[index]);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: PageView.builder(
        controller: _controller,
        physics: const PageScrollPhysics(),
        itemCount: widget.filters.length,
        onPageChanged: (index) {
          widget.onFilterChanged(widget.filters[index]);
        },
        // Dalam _FilterSelectorState di filter_selector.dart

// ...
        itemBuilder: (context, index) {
          final color = widget.filters[index];
          return GestureDetector(
            onTap: () => _onFilterTapped(index),
            child: Padding(
              padding: widget.padding,
              child: FilterItem( // <--- Ganti dengan FilterItem
                color: color,
                ),
              ),
          );
        },
// ...
      ),
    );
  }
}