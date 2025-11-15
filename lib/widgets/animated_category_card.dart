import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../utils/animation_manager.dart';

class AnimatedCategoryCard extends StatefulWidget {
  final String imageUrl;
  final String name;
  final VoidCallback onTap;
  final int index;

  const AnimatedCategoryCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  static void resetAnimationFlag() {
    AnimationManager.resetMenuPageAnimation();
  }

  @override
  State<AnimatedCategoryCard> createState() => _AnimatedCategoryCardState();
}

class _AnimatedCategoryCardState extends State<AnimatedCategoryCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: AppTheme.normalAnimation,
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.elasticOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    // Only animate on initial page load, not when scrolling
    if (AnimationManager.shouldAnimateMenuPage) {
      Future.delayed(Duration(milliseconds: widget.index * 100 + 300), () {
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
    if (AnimationManager.shouldAnimateMenuPage) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        AnimationManager.markMenuPageAnimated();
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
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: GestureDetector(
              onTapDown: (_) => setState(() => _isPressed = true),
              onTapUp: (_) => setState(() => _isPressed = false),
              onTapCancel: () => setState(() => _isPressed = false),
              onTap: widget.onTap,
              child: AnimatedScale(
                duration: AppTheme.fastAnimation,
                scale: _isPressed ? 0.95 : 1.0,
                child: Container(
                  margin: const EdgeInsets.all(AppTheme.spacingXS),
                  padding: const EdgeInsets.all(AppTheme.spacingS),
                  decoration: BoxDecoration(
                    gradient: AppTheme.cardGradient,
                    borderRadius: AppTheme.cardRadius,
                    boxShadow: _isPressed ? [] : AppTheme.cardShadow,
                    border: Border.all(
                      color: AppTheme.dividerColor.withValues(alpha: 0.3),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Expanded image container that takes most of the space
                      Expanded(
                        flex: 7,
                        child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: AppTheme.spacingS),
                          decoration: BoxDecoration(
                            color: AppTheme.accentGreen.withValues(alpha: 0.05),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: AppTheme.accentGreen.withValues(alpha: 0.1),
                              width: 1,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(11),
                            child: Hero(
                              tag: 'category_${widget.name}',
                              child: Image.network(
                                widget.imageUrl,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      gradient: AppTheme.primaryGradient,
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    child: const Icon(
                                      Icons.image_not_supported,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Text section takes remaining space
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(horizontal: AppTheme.spacingXS),
                          child: Center(
                            child: Text(
                              widget.name,
                              style: AppTheme.categoryTitle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.primaryGreen,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}