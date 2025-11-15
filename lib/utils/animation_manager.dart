class AnimationManager {
  static bool _menuPageAnimated = false;
  static bool _itemListPageAnimated = false;
  
  static bool get shouldAnimateMenuPage => !_menuPageAnimated;
  static bool get shouldAnimateItemListPage => !_itemListPageAnimated;
  
  static void markMenuPageAnimated() {
    _menuPageAnimated = true;
  }
  
  static void markItemListPageAnimated() {
    _itemListPageAnimated = true;
  }
  
  static void resetMenuPageAnimation() {
    _menuPageAnimated = false;
  }
  
  static void resetItemListPageAnimation() {
    _itemListPageAnimated = false;
  }
  
  static void resetAllAnimations() {
    _menuPageAnimated = false;
    _itemListPageAnimated = false;
  }
}