import 'package:cupertino_store/styles.dart';
import 'package:flutter/cupertino.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Styles.searchBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Row(
        children: [
          const Icon(
            CupertinoIcons.search,
            color: Styles.searchIconColor,
          ),
          Expanded(
            child: CupertinoTextField(
              controller: controller,
              focusNode: focusNode,
              style: Styles.searchText,
              cursorColor: Styles.searchCursorColor,
              decoration: null,
            ),
          ),
          GestureDetector(
            onTap: controller.clear,
            child: const Icon(
              CupertinoIcons.clear_thick_circled,
              color: Styles.searchIconColor,
            ),
          )
        ],
      ),
    );
  }
}
