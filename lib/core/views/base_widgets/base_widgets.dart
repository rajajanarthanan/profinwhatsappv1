 //  Button.dart
 //  Icon.dart
 //  Image.dart
 //  Column.dart
 //  Container.dart
 //  Rows.dart
 //  Text.dart
 //  Gridview.dart
 //  Table mterial
 //  Linearprogressindicator
 //  Bottom sheet
 //  Alertdialog
 //  Divider
 //  List and Listtile
 //  textfield
 

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
         required Widget child, required TextAlign textAlign, required TextDirection textDirection,
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
   /*  static ElevatedButton proLoadingButton({
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
          }){
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
         }){
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
          }*/

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
            List<Widget> children = const [],
            }){

             
                return Column(
                 key: key,
                 mainAxisAlignment: mainAxisAlignment,
                 mainAxisSize: mainAxisSize,
                 crossAxisAlignment: crossAxisAlignment,
                 textDirection: textDirection,
                 verticalDirection: verticalDirection,
                 textBaseline: textBaseline,
                 children: children,
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

  //Method to create an row
     static Row proRow({
         Key? key,
         MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
         MainAxisSize mainAxisSize = MainAxisSize.max,
         CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
         TextDirection? textDirection,
         VerticalDirection verticalDirection = VerticalDirection.down,
         TextBaseline? textBaseline,
         List<Widget> children = const <Widget>[]
        }){
            return Row(
              key:key,
              mainAxisAlignment: mainAxisAlignment,
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: crossAxisAlignment,
              textDirection: textDirection,
              verticalDirection: verticalDirection,
              textBaseline: textBaseline,
              children: children,
              );
          }
              
               

   //add text...
  //Method to create an text
       static Text proText({
           required dynamic data,
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
          required int itemCount,
           required Widget Function(BuildContext context, int index) itemBuilder,
  }) {
    return GridView.builder(
      key: key,
      gridDelegate: gridDelegate,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
    );
  }



  //add table material....
  //Method to create an tablematerial
   /*  static Table proTableMaterial({
            required List<List<String>> data,
            required int columnCount,
            Map<int, TableColumnWidth>? columnWidths,
            TableBorder? border,
            TableCellVerticalAlignment defaultVerticalAlignment = TableCellVerticalAlignment.middle,
            TextStyle? headerStyle,
            TextStyle? cellStyle,
            EdgeInsetsGeometry? cellPadding,
            AlignmentGeometry? cellAlignment,
            }){
                return Table(
                     border: border ?? TableBorder.all(),
                   columnWidths: columnWidths,
                   defaultVerticalAlignment: defaultVerticalAlignment,
                   children: List<TableRow>.generate(
                     data.length,
                     (rowIndex) {
                       return TableRow(
                         children: List<Widget>.generate(
                           columnCount,
                           (colIndex) {
                             bool isHeader = rowIndex == 0;
                             return Padding(
                               padding: cellPadding ?? const EdgeInsets.all(8.0),
                               child: Align(
                                 alignment: cellAlignment ?? Alignment.center,
                                 child: Text(
                                   data[rowIndex][colIndex],
                                   style: isHeader ? headerStyle : cellStyle,
                                 ),
                               ),
                             );
                           },
                        ),
                      );
                    },
                  ),
                );
              }  */
              
  //Method to create a linearprogressindicator
      static LinearProgressIndicator prolinearProgressIndicator({
           Key? key,
           double? value,
           Color? backgroundColor,
           Color? color,
           Animation<Color?>? valueColor,
           double? minHeight,
           String? semanticsLabel,
           String? semanticsValue,
           BorderRadiusGeometry borderRadius = BorderRadius.zero,
            }){
              return LinearProgressIndicator(
              value: value,
              backgroundColor:backgroundColor,
              color: color,
              valueColor: valueColor,
              minHeight:minHeight,
              semanticsLabel: semanticsLabel,
              semanticsValue: semanticsValue,
              borderRadius: borderRadius,
              );
          }

  //Method to create a bottomsheet
    /*    static BottomSheet proBottomSheet({
           Key? key,
           AnimationController? animationController,
           bool enableDrag = true,
           bool? showDragHandle,
           Color? dragHandleColor,
           Size? dragHandleSize,
           void Function(DragStartDetails)? onDragStart,
           void Function(DragEndDetails, {required bool isClosing})? onDragEnd,
           Color? backgroundColor,
           Color? shadowColor,
           double? elevation,
           ShapeBorder? shape,
           Clip? clipBehavior,
           BoxConstraints? constraints,
           required VoidCallback onClosing,
           required WidgetBuilder builder
         }){
              return BottomSheet(
                key: key,
                animationController: animationController,
                enableDrag: enableDrag,
                showDragHandle: showDragHandle,
                dragHandleColor: dragHandleColor,
                dragHandleSize: dragHandleSize,
                onDragStart: onDragStart,
                onDragEnd: onDragEnd,
                backgroundColor: backgroundColor,
                shadowColor: shadowColor,
                elevation: elevation,
                shape: shape,
                clipBehavior: clipBehavior,
                constraints: constraints,
                onClosing: onClosing,
                builder: builder,
              );
           }


  //Method to create a alertdialog
       static AlertDialog proAlertDialog({
           Key? key,
           Widget? icon,
           EdgeInsetsGeometry? iconPadding,
           Color? iconColor,
           Widget? title,
           EdgeInsetsGeometry? titlePadding,
           TextStyle? titleTextStyle,
           Widget? content,
           EdgeInsetsGeometry? contentPadding,
           TextStyle? contentTextStyle,
           List<Widget>? actions,
           EdgeInsetsGeometry? actionsPadding,
           MainAxisAlignment? actionsAlignment,
           OverflowBarAlignment? actionsOverflowAlignment,
           VerticalDirection? actionsOverflowDirection,
           double? actionsOverflowButtonSpacing,
           EdgeInsetsGeometry? buttonPadding,
           Color? backgroundColor,
           double? elevation,
           Color? shadowColor,
           Color? surfaceTintColor,
           String? semanticLabel,
           EdgeInsets? insetPadding,
           Clip clipBehavior = Clip.none,
           ShapeBorder? shape,
           AlignmentGeometry? alignment,
           bool scrollable = false
          }){
              return AlertDialog(
                key:key,
                icon: icon,
                iconPadding: iconPadding,
                iconColor: iconColor,
                title: title,
                titlePadding: titlePadding,
                titleTextStyle: titleTextStyle,
                content: content,
                contentPadding: contentPadding,
                contentTextStyle: contentTextStyle,
                actions: actions,
                actionsPadding: actionsPadding,
                actionsAlignment: actionsAlignment,
                actionsOverflowAlignment: actionsOverflowAlignment,
                actionsOverflowButtonSpacing: actionsOverflowButtonSpacing,
                buttonPadding: buttonPadding,
                backgroundColor: backgroundColor,
                elevation: elevation,
                shadowColor:  shadowColor,
                surfaceTintColor: surfaceTintColor,
                semanticLabel: semanticLabel,
                insetPadding: insetPadding,
                clipBehavior: clipBehavior,
                shape: shape,
                alignment: alignment,
                scrollable: scrollable,
              );
            }


  //Method to create a divider
       static Divider proDivider({
           Key? key,
           double? height,
           double? thickness,
           double? indent,
           double? endIndent,
           Color? color,
          }){
               return Divider(
                 key: key,
                 height: height,
                 thickness: thickness,
                 indent: indent,
                 endIndent: endIndent,
                 color: color,
               );
            } 


  //Method to create an list
      static ListView proListView({
          Key? key,
          Axis scrollDirection = Axis.vertical,
          bool reverse = false,
          ScrollController? controller,
          bool? primary,
          ScrollPhysics? physics,
          bool shrinkWrap = false,
          EdgeInsetsGeometry? padding,
          double? itemExtent,
          required itemExtentBuilder,
          Widget? prototypeItem,
          bool addAutomaticKeepAlives = true,
          bool addRepaintBoundaries = true,
          bool addSemanticIndexes = true,
          double? cacheExtent,
          List<Widget> children = const <Widget>[],
          int? semanticChildCount,
          dynamic dragStartBehavior,
          ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
          String? restorationId,
          Clip clipBehavior = Clip.hardEdge, required ListTile Function(dynamic context, dynamic index) itemBuilder, required int itemCount,
          }){ 
               return ListView(
                key:key,
                scrollDirection: scrollDirection,
                reverse: reverse,
                controller: controller,
                primary: primary,
                shrinkWrap: shrinkWrap,
                physics: physics,
                padding: padding,
                itemExtent: itemExtent,
                itemExtentBuilder: itemExtentBuilder,
                prototypeItem: prototypeItem,
                addAutomaticKeepAlives: addAutomaticKeepAlives,
                addRepaintBoundaries: addRepaintBoundaries,
                addSemanticIndexes: addSemanticIndexes,
                cacheExtent: cacheExtent,
                semanticChildCount: semanticChildCount,
                dragStartBehavior: dragStartBehavior,
                keyboardDismissBehavior: keyboardDismissBehavior,
                restorationId: restorationId,
                clipBehavior: clipBehavior,
                children: children,
                );
             }


  //Method to create an listtile
      static ListTile proListTile({
           Key? key,
           Widget? leading,
           Widget? title,
           Widget? subtitle,
           Widget? trailing,
           bool isThreeLine = false,
           bool? dense,
           VisualDensity? visualDensity,
           ShapeBorder? shape,
           ListTileStyle? style,
           Color? selectedColor,
           Color? iconColor,
           Color? textColor,
           TextStyle? titleTextStyle,
           TextStyle? subtitleTextStyle,
           TextStyle? leadingAndTrailingTextStyle,
           EdgeInsetsGeometry? contentPadding,
           bool enabled = true,
           GestureTapCallback? onTap,
           GestureLongPressCallback? onLongPress,
           ValueChanged<bool>? onFocusChange,
           MouseCursor? mouseCursor,
           bool selected = false,
           Color? focusColor,
           Color? hoverColor,
           Color? splashColor,
           FocusNode? focusNode,
           bool autofocus = false,
           Color? tileColor,
           Color? selectedTileColor,
           bool? enableFeedback,
           double? horizontalTitleGap,
           double? minVerticalPadding,
           double? minLeadingWidth,
           double? minTileHeight,
           ListTileTitleAlignment? titleAlignment
          }){ 
               return ListTile(
                key: key,
                leading: leading,
                title: title,
                subtitle: subtitle,
                trailing: trailing,
                isThreeLine: isThreeLine,
                dense: dense,
                visualDensity: visualDensity,
                shape: shape,
                style: style,
                selectedColor: selectedColor,
                iconColor: iconColor,
                textColor: textColor,
                titleTextStyle: titleTextStyle,
                subtitleTextStyle: subtitleTextStyle,
                leadingAndTrailingTextStyle: leadingAndTrailingTextStyle,
                contentPadding: contentPadding,
                enabled: enabled,
                onTap: onTap,
                onLongPress: onLongPress,
                onFocusChange: onFocusChange,
                mouseCursor: mouseCursor,
                selected: selected,
                focusColor: focusColor,
                hoverColor: hoverColor,
                splashColor: splashColor,
                focusNode: focusNode,
                autofocus: autofocus,
                tileColor: tileColor,
                selectedTileColor: selectedTileColor,
                enableFeedback: enableFeedback,
                horizontalTitleGap: horizontalTitleGap,
                minVerticalPadding: minVerticalPadding,
                minLeadingWidth: minLeadingWidth,
                minTileHeight: minTileHeight,
                titleAlignment: titleAlignment,
               );
            }*/

  //Method to create an textfield
       static TextField proTextField({
        Key? key,
        TextEditingController? controller,
        FocusNode? focusNode,
        UndoHistoryController? undoController,
        InputDecoration? decoration = const InputDecoration(),
        TextInputType? keyboardType,
        TextInputAction? textInputAction,
        TextCapitalization textCapitalization = TextCapitalization.none,
        TextStyle? style,
        StrutStyle? strutStyle,
        TextAlign textAlign = TextAlign.start,
        TextAlignVertical? textAlignVertical,
        TextDirection? textDirection,
        bool readOnly = false,
        // ignore: deprecated_member_use
        //ToolbarOptions? toolbarOptions,
        bool? showCursor,
        bool autofocus = false,
         WidgetStatesController? statesController,
         String obscuringCharacter = '•',
         bool obscureText = false,
         bool autocorrect = true,
         SmartDashesType? smartDashesType,
         SmartQuotesType? smartQuotesType,
         bool enableSuggestions = true,
         int? maxLines = 1,
         int? minLines,
          bool expands = false,
          int? maxLength,
          required maxLengthEnforcement,
           required void Function(String)? onChanged,
          void Function()? onEditingComplete,
          void Function(String)? onSubmitted,
          void Function(String, Map<String, dynamic>)? onAppPrivateCommand,
          required inputFormatters,
          bool? enabled,
          bool? ignorePointers,
          double cursorWidth = 2.0,
          double? cursorHeight,
          Radius? cursorRadius,
          bool? cursorOpacityAnimates,
          Color? cursorColor,
          Color? cursorErrorColor,
          required dynamic selectionHeightStyle,
          required dynamic selectionWidthStyle,
          Brightness? keyboardAppearance,
          EdgeInsets scrollPadding = const EdgeInsets.all(20.0),
          required dynamic dragStartBehavior,
          bool? enableInteractiveSelection,
          TextSelectionControls? selectionControls,
          void Function()? onTap,
          bool onTapAlwaysCalled = false,
          void Function(PointerDownEvent)? onTapOutside,
          MouseCursor? mouseCursor,
          Widget? Function(BuildContext, {required int currentLength, required bool isFocused, required int? maxLength})? buildCounter,
          ScrollController? scrollController,
          ScrollPhysics? scrollPhysics,
          Iterable<String>? autofillHints = const <String>[],
          ContentInsertionConfiguration? contentInsertionConfiguration,
          Clip clipBehavior = Clip.hardEdge,
          String? restorationId,
          bool scribbleEnabled = true,
          bool enableIMEPersonalizedLearning = true,
          Widget Function(BuildContext, EditableTextState)? contextMenuBuilder,
          bool canRequestFocus = true,
          SpellCheckConfiguration? spellCheckConfiguration,
          TextMagnifierConfiguration? magnifierConfiguration, required Null Function(dynamic value) validator,
         }){
             return TextField(
                 key: key,
                 controller: controller,
                 focusNode: focusNode,
                 undoController: undoController,
                 decoration: decoration,
                 keyboardType: keyboardType,
                 textInputAction: textInputAction,
                 textCapitalization: textCapitalization,
                 style: style,
                 strutStyle: strutStyle,
                 textAlign: textAlign,
                 textAlignVertical: textAlignVertical,
                 textDirection: textDirection,
                 readOnly: readOnly,
                 showCursor: showCursor,
                 autofocus: autofocus,
                 obscuringCharacter: obscuringCharacter,
                 obscureText: obscureText,
                 autocorrect: autocorrect,
                 smartDashesType: smartDashesType,
                 smartQuotesType: smartQuotesType,
                 enableSuggestions: enableSuggestions,
                 maxLines: maxLines,
                 minLines: minLines,
                 expands: expands,
                 maxLength: maxLength,
                 maxLengthEnforcement: maxLengthEnforcement,
                 onChanged: onChanged,
                 onEditingComplete: onEditingComplete,
                 onSubmitted: onSubmitted,
                 onAppPrivateCommand: onAppPrivateCommand,
                 inputFormatters: inputFormatters,
                 enabled: enabled,
                 ignorePointers: ignorePointers,
                 cursorWidth: cursorWidth,
                 cursorHeight: cursorHeight,
                 cursorRadius: cursorRadius,
                 cursorOpacityAnimates: cursorOpacityAnimates,
                 cursorColor: cursorColor,
                 cursorErrorColor: cursorErrorColor,
                 selectionHeightStyle: selectionHeightStyle,
                 selectionWidthStyle: selectionWidthStyle,
                 keyboardAppearance: keyboardAppearance,
                 scrollPadding: scrollPadding,
                 dragStartBehavior: dragStartBehavior,
                 enableInteractiveSelection: enableInteractiveSelection,
                 selectionControls: selectionControls,
                 onTap: onTap,
                 onTapAlwaysCalled: onTapAlwaysCalled,
                 onTapOutside: onTapOutside,
                 mouseCursor: mouseCursor,
                 buildCounter: buildCounter,
                 scrollController: scrollController,
                 scrollPhysics: scrollPhysics,
                 autofillHints: autofillHints,
                 contentInsertionConfiguration: contentInsertionConfiguration,
                 clipBehavior: clipBehavior,
                 restorationId: restorationId,
                 scribbleEnabled: scribbleEnabled,
                 enableIMEPersonalizedLearning: enableIMEPersonalizedLearning,
                 contextMenuBuilder: contextMenuBuilder,
                 canRequestFocus: canRequestFocus,
                 spellCheckConfiguration: spellCheckConfiguration,
                 magnifierConfiguration: magnifierConfiguration,
                );
            }

           
  }

  
            

       

  
               
       
               

      




            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            

              
            
 
    
    
    
    
    
 

  
  
  