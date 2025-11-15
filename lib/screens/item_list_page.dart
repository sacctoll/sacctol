import 'package:flutter/material.dart';
import '../models/models.dart';
import '../theme/app_theme.dart';
import '../widgets/widgets.dart';

class ItemListPage extends StatefulWidget {
  final Category category;

  const ItemListPage({Key? key, required this.category}) : super(key: key);

  @override
  State<ItemListPage> createState() => _ItemListPageState();
}

class _ItemListPageState extends State<ItemListPage>
    with TickerProviderStateMixin {
  late AnimationController _headerAnimationController;
  late Animation<double> _headerScaleAnimation;
  late Animation<double> _headerFadeAnimation;

  @override
  void initState() {
    super.initState();
    _headerAnimationController = AnimationController(
      duration: AppTheme.slowAnimation,
      vsync: this,
    );

    _headerScaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _headerAnimationController,
      curve: Curves.easeOutBack,
    ));

    _headerFadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _headerAnimationController,
      curve: Curves.easeInOut,
    ));

    _headerAnimationController.forward();
  }

  @override
  void dispose() {
    _headerAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final isTablet = screenWidth > 600;

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: AppTheme.cardShadow,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: AppTheme.primaryGreen,
                  size: 20,
                ),
              ),
              onPressed: () {
                // Reset animation flag for category cards to animate when returning to menu
                AnimatedCategoryCard.resetAnimationFlag();
                Navigator.pop(context);
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppTheme.primaryGreen.withValues(alpha: 0.05),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: ScaleTransition(
                  scale: _headerScaleAnimation,
                  child: FadeTransition(
                    opacity: _headerFadeAnimation,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80),
                        Hero(
                          tag: 'category_${widget.category.name}',
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: const EdgeInsets.all(AppTheme.spacingM),
                            decoration: BoxDecoration(
                              color: AppTheme.accentGreen.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(
                                color: AppTheme.accentGreen.withValues(alpha: 0.3),
                                width: 2,
                              ),
                              boxShadow: AppTheme.elevatedShadow,
                            ),
                            child: Image.network(
                              widget.category.imageUrl,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return const Icon(
                                  Icons.restaurant_menu,
                                  color: AppTheme.primaryGreen,
                                  size: 50,
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: AppTheme.spacingM),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppTheme.spacingL),
                          child: Column(
                            children: [
                              Text(
                                widget.category.name,
                                style: AppTheme.headingMedium.copyWith(
                                  color: AppTheme.primaryGreen,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: AppTheme.spacingS),
                              Text(
                                widget.category.description,
                                style: AppTheme.bodyMedium,
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: isTablet ? AppTheme.spacingXL : AppTheme.spacingM,
              vertical: AppTheme.spacingL,
            ),
            sliver: widget.category.ourMenuItems.isNotEmpty
                ? _buildMenuItems()
                : _buildEmptyState(),
          ),
          if (widget.category.addsItems.isNotEmpty &&
              widget.category.addsItems
                  .any((item) => item.name.trim().isNotEmpty))
            _buildAddOnsSection(),
          const SliverPadding(
            padding: EdgeInsets.only(bottom: AppTheme.spacingXL),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItems() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = widget.category.ourMenuItems[index];
          return AnimatedMenuItem(
            name: item.name,
            price: item.price,
            index: index,
          );
        },
        childCount: widget.category.ourMenuItems.length,
      ),
    );
  }

  Widget _buildEmptyState() {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(AppTheme.spacingXL),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                gradient: AppTheme.primaryGradient,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.restaurant_menu,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(height: AppTheme.spacingL),
            Text(
              'Coming Soon!',
              style: AppTheme.headingMedium.copyWith(
                color: AppTheme.primaryGreen,
              ),
            ),
            const SizedBox(height: AppTheme.spacingS),
            Text(
              'We\'re preparing something amazing for you.',
              style: AppTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddOnsSection() {
    final validAddOns = widget.category.addsItems
        .where((item) => item.name.trim().isNotEmpty)
        .toList();

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: AppTheme.spacingM),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(AppTheme.spacingM),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 24,
                    decoration: BoxDecoration(
                      gradient: AppTheme.primaryGradient,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(width: AppTheme.spacingS),
                  Text(
                    'Add-ons',
                    style: AppTheme.headingMedium.copyWith(
                      color: AppTheme.primaryGreen,
                    ),
                  ),
                ],
              ),
            ),
            ...validAddOns.asMap().entries.map(
                  (entry) => AnimatedMenuItem(
                    name: entry.value.name,
                    price: entry.value.price,
                    index: entry.key + widget.category.ourMenuItems.length,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}