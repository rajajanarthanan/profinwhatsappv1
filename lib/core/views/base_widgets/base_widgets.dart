// add button.dart
// add icon.dart
// add image.dart

// TODO:
// extend base_widgets for widgets
// extend widgets for base_view
// text each view from base_view


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BaseWidgets {
 /* static ElevatedButton proElevatedButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget child,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: child,
    );
  }

  static TextButton proTextButton({
    required void Function()? onPressed,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget child,
  }) {
    return TextButton(
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
 
  // Method to create a LoadingButton
  static ElevatedButton proLoadingButton({
    required VoidCallback onPressed,
    required bool isLoading,
    required Widget child,
    Widget loadingWidget = const CircularProgressIndicator(),
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
  }) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      child: isLoading ? loadingWidget : child,
    );
  }

// Method to create a AsyncButton
  static TextButton proAsyncButton({
    required VoidCallback onPressed,
    required String text,
  }) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }

  // Method to create an IconButton
  static IconButton proIconButton({
    required dynamic Function()? onPressed,
    required IconData iconData,
    required String tooltip,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData),
      tooltip: tooltip,
    );
  }*/


   // Method to create an icon
       static Icon proIcon({
         required IconData icon,
         Key? key,
         double? size,
         double? fill,
         double? weight,
         double? grade,
         double? opticalSize,
         Color? color,
         List<Shadow>? shadows,
         String? semanticLabel,
         TextDirection? textDirection,
         bool? applyTextScaling,
         }){
           return Icon(
             icon,
             key: key,
             size: size,
             fill: fill,
             weight: weight,
             grade: grade,
             opticalSize: opticalSize,
             color: color,
             shadows: shadows,
             semanticLabel: semanticLabel,
             textDirection: textDirection,
             applyTextScaling: applyTextScaling,
          );
        }

    //Method to create an image
       static Image proImage({
         Key? key,
         required ImageProvider<Object> image,
         Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
         Widget Function(BuildContext, Widget, ImageChunkEvent?)? loadingBuilder,
         Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
         String? semanticLabel,
         bool excludeFromSemantics = false,
         double? width,
         double? height,
         Color? color,
         Animation<double>? opacity,
         BlendMode? colorBlendMode,
         BoxFit? fit,
         AlignmentGeometry alignment = Alignment.center,
         ImageRepeat repeat = ImageRepeat.noRepeat,
         Rect? centerSlice,
         bool matchTextDirection = false,
         bool gaplessPlayback = false,
         bool isAntiAlias = false,
         FilterQuality filterQuality = FilterQuality.low,
         }){
            return Image(
               key: key,
               image: image,
               frameBuilder: frameBuilder,
               loadingBuilder: loadingBuilder,
               errorBuilder: errorBuilder,
                semanticLabel: semanticLabel,
                excludeFromSemantics: excludeFromSemantics,
                width: width,
                height: height,
                color: color,
                opacity: opacity,
                colorBlendMode: colorBlendMode,
                fit: fit,
                alignment: alignment,
                repeat: repeat,
                centerSlice: centerSlice,
                matchTextDirection: matchTextDirection,
                gaplessPlayback: gaplessPlayback,
                isAntiAlias: isAntiAlias,
                filterQuality: filterQuality,
            );
         }
}

          
       
       
       

    
    
    
    
    
    
    
 

   