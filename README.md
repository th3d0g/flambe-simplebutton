flambe-simplebutton
===================

Simple test button and button group for Flambe (Haxe).

![Alt text](http://s27.postimg.org/mrv1naucj/simplebutton.jpg "Example" )


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
