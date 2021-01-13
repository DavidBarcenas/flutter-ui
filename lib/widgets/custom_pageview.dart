import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  final int currentPage;
  final List<Widget> children;

  const CustomPageView({@required this.currentPage, @required this.children})
      : assert(currentPage != null),
        assert(children != null);

  @override
  _CustomPageViewState createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  List<int> _renderPage = [0];

  @override
  void didUpdateWidget(covariant CustomPageView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!_renderPage.contains(widget.currentPage)) {
      setState(() {
        _renderPage.add(widget.currentPage);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IndexedStack(
          alignment: Alignment.center,
          children: List.generate(
              widget.children.length,
              (index) => _renderPage.contains(index)
                  ? widget.children[index]
                  : Container()),
          index: widget.currentPage),
    );
  }
}
