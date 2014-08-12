flambe-simplebutton
===================

**SimpleButton** is a simple button (hence the name) that's useful when prototyping.
Also included is **SimpleButtonGroup**, which can be used to layout of a collection of SimpleButtons.

![Alt text](http://s27.postimg.org/mrv1naucj/simplebutton.jpg "Example" )

Example:
```haxe
// Button Group
var simpleButtonGroup:SimpleButtonGroup = new SimpleButtonGroup();   
simpleButtonGroup.centerAnchor().setXY( System.stage.width * .5, System.stage.height * .5 );   
System.root.addChild( simpleButtonGroup.entity );

// Buttons
simpleButtonGroup.add( new SimpleButton( "Button 1", fontArial ) )
            .sprite.pointerDown.connect( function ( event:PointerEvent ) {
    
    trace("Button 1 clicked.");
});

simpleButtonGroup.add( new SimpleButton( "Button 2", fontArial ) )
            .sprite.pointerDown.connect( function ( event:PointerEvent ) {
    
    trace("Button 2 clicked.");
});
```

SimpleButtonGroup supports two different orientations. Vertical and Horizontal.
```haxe
simpleButtonGroup.direction = GroupDirection.Horizontal;
```

Tested on both HTML5 and Flash platforms.
