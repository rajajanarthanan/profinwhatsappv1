 //  button.dart
 //  icon.dart
 //  image.dart
 //  column.dart
 //  container.dart
 //  rows.dart
 //  text.dart
 //  gridview.dart
 

 // TODO:
   // extend base_widgets for widgets
  // extend widgets for base_view
 // text each view from base_view


import 'package:flutter/material.dart';

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


    //add column....
  //Method to create a column
        static Column proColumn({
            Key? key,
            MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
            MainAxisSize mainAxisSize = MainAxisSize.max,
            CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
            TextDirection? textDirection,
            VerticalDirection verticalDirection = VerticalDirection.down,
            TextBaseline? textBaseline,
            required Alignment alignment, 
            required EdgeInsets padding, 
            required MaterialColor color,
            required double width, 
            required double height, 
            required EdgeInsets margin, 
            required BoxDecoration decoration,
            List<Widget> children = const [],
            }){
                return Column(
                 mainAxisAlignment: mainAxisAlignment,
                 mainAxisSize: mainAxisSize,
                 crossAxisAlignment: crossAxisAlignment,
                 textDirection: textDirection,
                 verticalDirection: verticalDirection,
                 textBaseline: textBaseline,
                 );
                }


   //add container...
  //Method to create a container
        static Container proContainer({
           Key? key,
           AlignmentGeometry? alignment,
           EdgeInsetsGeometry? padding,
           Color? color,
           Decoration? decoration,
           Decoration? foregroundDecoration,
           double? width,
           double? height,
           BoxConstraints? constraints,
           EdgeInsetsGeometry? margin,
           Matrix4? transform,
           AlignmentGeometry? transformAlignment,
           Widget? child,
           Clip clipBehavior = Clip.none,
          }){
              return Container(
                alignment: alignment,
                padding: padding,
                color: color,
                decoration: decoration,
                foregroundDecoration: foregroundDecoration,
                width: width,
                height: height,
                constraints: constraints,
                margin: margin,
                transform: transform,
                transformAlignment: transformAlignment,
                clipBehavior: clipBehavior,
                child: child,
              );
           }


    //add text...
  //Method to create an text
        static Text proText({
            required String data,
           Key? key,
           TextStyle? style,
           StrutStyle? strutStyle,
           TextAlign? textAlign,
           TextDirection? textDirection,
           Locale? locale,
           bool? softWrap,
           TextOverflow? overflow,
           TextScaler? textScaler,
           int? maxLines,
           String? semanticsLabel,
           TextWidthBasis? textWidthBasis,
           TextHeightBehavior? textHeightBehavior,
           Color? selectionColor,
          }){
               return Text(
                data,
                style: style,
                textAlign: textAlign,
                textDirection: textDirection,
                locale: locale,
                softWrap: softWrap,
                overflow: overflow,
                textScaler: textScaler,
                maxLines: maxLines,
                semanticsLabel: semanticsLabel,
                textWidthBasis: textWidthBasis,
                textHeightBehavior: textHeightBehavior,
                selectionColor: selectionColor,
               );
            }

  // Method to create a text.rich
        static Text proTextRich({
            required InlineSpan textSpan,
            Key? key,
            TextStyle? style,
            StrutStyle? strutStyle,
            TextAlign? textAlign,
            TextDirection? textDirection,
            Locale? locale,
            bool? softWrap,
            TextOverflow? overflow,
            TextScaler? textScaler,
            int? maxLines,
            String? semanticsLabel,
            TextWidthBasis? textWidthBasis,
            TextHeightBehavior? textHeightBehavior,
            Color? selectionColor
          }){
              return Text.rich(
                textSpan,
                style: style,
                strutStyle: strutStyle,
                textAlign: textAlign,
                textDirection: textDirection,
                locale: locale,
                softWrap: softWrap,
                overflow: overflow,
                textScaler: textScaler,
                maxLines: maxLines,
                semanticsLabel: semanticsLabel,
                textWidthBasis: textWidthBasis,
                textHeightBehavior: textHeightBehavior,
                selectionColor: selectionColor,
              );
            }


  //add gridview...
  //Method to create a gridview
       static GridView proGridView({
            Key? key,
            Axis scrollDirection = Axis.vertical,
            bool reverse = false,
            ScrollController? controller,
            bool? primary,
            ScrollPhysics? physics,
            bool shrinkWrap = false,
            EdgeInsetsGeometry? padding,
            required SliverGridDelegate gridDelegate,
            bool addAutomaticKeepAlives = true,
            bool addRepaintBoundaries = true,
            bool addSemanticIndexes = true,
            double? cacheExtent,
            List<Widget> children = const <Widget>[],
            int? semanticChildCount,
            Clip clipBehavior = Clip.hardEdge,
            ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
            dynamic String,
           }){
               return GridView(
                 gridDelegate: gridDelegate,
                 scrollDirection: scrollDirection,
                 reverse: reverse,
                 controller: controller,
                 primary: primary, 
                 physics: physics,
                 shrinkWrap: shrinkWrap,
                 padding: padding,
                 addAutomaticKeepAlives: addAutomaticKeepAlives,
                 addRepaintBoundaries: addRepaintBoundaries,
                 addSemanticIndexes: addSemanticIndexes,
                 cacheExtent: cacheExtent,
                 semanticChildCount: semanticChildCount,
                 clipBehavior: clipBehavior,
                 keyboardDismissBehavior: keyboardDismissBehavior,
                 children: [],
                );
              }
          }          
  
 

       

       

  
               
       
               

      




            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            

              
            
 
    
    
    
    
    
 

  
  
  