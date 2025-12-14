import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../utils/animation_manager.dart';

class AnimatedMenuItem extends StatefulWidget {
  final String name;
  final String price;
  final int index;

  const AnimatedMenuItem({
    Key? key,
    required this.name,
    required this.price,
    required this.index,
  }) : super(key: key);

  static void resetAnimationFlag() {
    AnimationManager.resetItemListPageAnimation();
  }

  @override
  State<AnimatedMenuItem> createState() => _AnimatedMenuItemState();
}

class _AnimatedMenuItemState extends State<AnimatedMenuItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: AppTheme.normalAnimation,
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    // Only animate on initial page load, not when scrolling
    if (AnimationManager.shouldAnimateItemListPage) {
      Future.delayed(Duration(milliseconds: widget.index * 50 + 500), () {
        if (mounted) {
          _animationController.forward();
        }
      });
    } else {
      // If page already animated, show immediately without animation
      _animationController.value = 1.0;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Mark as animated after first build cycle
    if (AnimationManager.shouldAnimateItemListPage) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        AnimationManager.markItemListPageAnimated();
      });
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: AppTheme.spacingM,
            vertical: AppTheme.spacingS,
          ),
          padding: const EdgeInsets.all(AppTheme.spacingM),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: AppTheme.cardRadius,
            boxShadow: [
              BoxShadow(
                color: AppTheme.shadowColor.withValues(alpha: 0.5),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
            border: Border.all(
              color: AppTheme.accentGreen.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Check if screen is small (phone)
              final isSmallScreen = constraints.maxWidth < 400;
              
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: isSmallScreen ? 3 : 2,
                    child: Text(
                      widget.name,
                      style: AppTheme.bodyLarge,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: isSmallScreen ? AppTheme.spacingS : AppTheme.spacingM),
                  Flexible(
                    flex: isSmallScreen ? 2 : 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: isSmallScreen ? AppTheme.spacingXS : AppTheme.spacingS,
                        vertical: AppTheme.spacingXS,
                      ),
                      decoration: BoxDecoration(
                        gradient: AppTheme.primaryGradient,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        widget.price,
                        style: AppTheme.priceText.copyWith(
                          color: Colors.white,
                          fontSize: isSmallScreen ? 11 : 13,
                          height: 1.3,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}