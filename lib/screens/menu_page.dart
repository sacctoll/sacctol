import 'package:flutter/material.dart';
import 'item_list_page.dart';
import '../data/app_data.dart';
import '../theme/app_theme.dart';
import '../widgets/widgets.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> with TickerProviderStateMixin {
  late AnimationController _headerAnimationController;
  late Animation<double> _headerFadeAnimation;
  late Animation<Offset> _headerSlideAnimation;

  @override
  void initState() {
    super.initState();
    _headerAnimationController = AnimationController(
      duration: AppTheme.slowAnimation,
      vsync: this,
    );

    _headerFadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _headerAnimationController,
      curve: Curves.easeInOut,
    ));

    _headerSlideAnimation = Tween<Offset>(
      begin: const Offset(0.0, -0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _headerAnimationController,
      curve: Curves.easeOutCubic,
    ));

    _headerAnimationController.forward();
  }

  @override
  void dispose() {
    _headerAnimationController.dispose();
    super.dispose();
  }

  int _getCrossAxisCount(double width) {
    if (width < 600) return 2;
    if (width < 900) return 3;
    if (width < 1200) return 4;
    return 5;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final crossAxisCount = _getCrossAxisCount(screenWidth);
    
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            floating: false,
            pinned: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppTheme.primaryGreen.withValues(alpha: 0.1),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: SlideTransition(
                  position: _headerSlideAnimation,
                  child: FadeTransition(
                    opacity: _headerFadeAnimation,
                    child: SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Hero(
                            tag: 'app_logo',
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: AppTheme.cardShadow,
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'imagess/logo.png',
                                  fit: BoxFit.cover,
                                  // errorBuilder: (context, error, stackTrace) {
                                  //   return Container(
                                  //     decoration: const BoxDecoration(
                                  //       gradient: AppTheme.primaryGradient,
                                  //       shape: BoxShape.circle,
                                  //     ),
                                  //     child: const Icon(
                                  //       Icons.restaurant_menu,
                                  //       size: 50,
                                  //       color: Colors.white,
                                  //     ),
                                  //   );
                                  // },
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: AppTheme.spacingS),
                          Text(
                            'Sacctol Menu',
                            style: AppTheme.headingMedium.copyWith(
                              color: AppTheme.primaryGreen,
                            ),
                          ),
                          const SizedBox(height: AppTheme.spacingXS),
                          Text(
                            'Discover our delicious categories',
                            style: AppTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(
              screenWidth < 600 ? AppTheme.spacingM : AppTheme.spacingL,
            ),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: screenWidth < 600 ? 0.9 : 0.85,
                crossAxisSpacing: AppTheme.spacingS,
                mainAxisSpacing: AppTheme.spacingS,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final category = AppData.categories[index];
                  return AnimatedCategoryCard(
                    imageUrl: category.imageUrl,
                    name: category.name,
                    index: index,
                    onTap: () {
                      // Reset animation flag for menu items to animate on page entry
                      AnimatedMenuItem.resetAnimationFlag();
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) =>
                              ItemListPage(category: category),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOutCubic;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                          transitionDuration: AppTheme.normalAnimation,
                        ),
                      );
                    },
                  );
                },
                childCount: AppData.categories.length,
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(bottom: AppTheme.spacingXL),
          ),
        ],
      ),
    );
  }
}