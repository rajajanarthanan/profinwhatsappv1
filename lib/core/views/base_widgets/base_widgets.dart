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

    // add button...
  //Method to create a elevatedbutton
     static ElevatedButton proElevatedButton({
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

  //Method to create a textbutton
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
          }


    // add icon...    
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

    //add image...
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
                centerSlice:  centerSlice,
                matchTextDirection :  matchTextDirection,
                gaplessPlayback:  gaplessPlayback,
                isAntiAlias:  isAntiAlias,
                filterQuality: filterQuality, 
              );
            }

  //Method to create a image.asset
       static Image proImageAsset({
         required String name,
         Key? key,
         AssetBundle? bundle,
         Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
         Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
         String? semanticLabel,
         bool excludeFromSemantics = false,
         double? scale,
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
         String? package,
         FilterQuality filterQuality = FilterQuality.low,
         int? cacheWidth,
         int? cacheHeight,
         }){
            return Image.asset(
              name,
              key: key,
              bundle: bundle,
              frameBuilder: frameBuilder,
              errorBuilder: errorBuilder,
              semanticLabel: semanticLabel,
              excludeFromSemantics: excludeFromSemantics,
              scale: scale,
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
              package: package,
              filterQuality: filterQuality,
              cacheWidth: cacheWidth,
              cacheHeight: cacheHeight,
            );
          }

  //Method to create a image.file
       static Image proImageFile({
         required file,
         Key? key,
         double scale = 1.0,
         ImageFrameBuilder? frameBuilder,
         ImageErrorWidgetBuilder? errorBuilder,
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
         int? cacheWidth,
         int? cacheHeight
         }){
            return Image .file(
                file,
                key: key,
                scale: scale,
                frameBuilder: frameBuilder,
                errorBuilder: errorBuilder,
                semanticLabel: semanticLabel,
                excludeFromSemantics: excludeFromSemantics,
                width: width,
                height: height,
                color: color,
                opacity: opacity,
                colorBlendMode: colorBlendMode,
                fit: fit,
                alignment:alignment,
                repeat: repeat,
                centerSlice: centerSlice,
                matchTextDirection: matchTextDirection,
                gaplessPlayback: gaplessPlayback,
                isAntiAlias: isAntiAlias,
                filterQuality: filterQuality,
                cacheWidth: cacheWidth,
                cacheHeight: cacheHeight,
               );
             }

  //Method to create an image.memory
       static Image proImageMemory({
            required bytes,
            Key? key,
            double scale = 1.0,
            ImageFrameBuilder? frameBuilder,
            ImageErrorWidgetBuilder? errorBuilder,
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
            int? cacheWidth,
            int? cacheHeight
            }){
               return Image.memory(
                  bytes,
                  scale: scale,
                  frameBuilder: frameBuilder,
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
                  repeat:repeat,
                  centerSlice: centerSlice,
                  matchTextDirection: matchTextDirection,
                  gaplessPlayback: gaplessPlayback,
                  isAntiAlias: isAntiAlias,
                  filterQuality: filterQuality,
                  cacheWidth: cacheWidth,
                  cacheHeight: cacheHeight,
                 );
                }

  //Method to create an image.network
        static Image proImageNetwork({
           required String src,
           Key? key,
           double scale = 1.0,
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
           FilterQuality filterQuality = FilterQuality.low,
           bool isAntiAlias = false,
           Map<String, String>? headers,
           int? cacheWidth,
           int? cacheHeight
            }){
                return Image.network(
                  src,
                  scale: scale,
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
                  filterQuality: filterQuality,
                  isAntiAlias: isAntiAlias,
                  headers: headers,
                  cacheWidth: cacheWidth,
                  cacheHeight: cacheHeight,
                );
               }

                  
           
        }

  
               
       
               

      




            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            

              
            
 
    
    
    
    
    
 

  
  
  