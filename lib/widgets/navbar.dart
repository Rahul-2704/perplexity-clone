import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:perplexity_clone/widgets/navbar_elements.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isCollapsed ? 64 : 150,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Icon(
              Icons.auto_awesome_mosaic,
              color: Colors.white,
              size: isCollapsed ? 30 : 60,
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: isCollapsed
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                NavbarElements(
                    isCollapsed: isCollapsed, icon: Icons.add, text: 'Home'),
                NavbarElements(
                    isCollapsed: isCollapsed, icon: Icons.search, text: 'Search'),
                NavbarElements(
                    isCollapsed: isCollapsed,
                    icon: Icons.language,
                    text: 'Spaces'),
                NavbarElements(
                    isCollapsed: isCollapsed,
                    icon: Icons.auto_awesome,
                    text: 'Discover'),
                NavbarElements(
                    isCollapsed: isCollapsed, icon: Icons.cloud, text: 'Library'),
                const Spacer(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: AppColors.iconGrey,
                size: 22,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
