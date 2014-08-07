/*

Simple Button
-----------------------------

Example Usage:

var playButton:SimpleButton = new SimpleButton( "Hello", fontArial, 100, 70, 0xFF0000 );
playButton.sprite.setXY( 100, 200 );        
playButton.sprite.pointerDown.connect( function ( event:PointerEvent ) {
    trace("hello");
});
scene.addChild( playButton.entity );

*/



package com.nb.gui;

import flambe.Entity;
import flambe.display.Sprite;
import flambe.display.FillSprite;
import flambe.display.TextSprite;
import flambe.display.Font;
import flambe.input.PointerEvent;

class SimpleButton
{
	public var sprite( default,null ):Sprite;
	private var textSprite:TextSprite;
	public var entity( default,null ):Entity;

	public var label( default,null ):String;
	public var font( default,null ):Font;
	public var width( default,null ):Int;
	public var height( default,null ):Int;
	public var colour( default,null ):Int;

  	public function new ( _label:String, _font:Font, _width:Int = 200, _height:Int = 70, _colour:Int = 0xFFFFFF ):Void
  	{
		label = _label;
		font = _font;
		width = _width;
		height = _height;
		colour = _colour;

		entity = new Entity();

		// Background
		sprite = new FillSprite( colour, width, height );
		// sprite.centerAnchor();

		// Label
		textSprite = new TextSprite( font, label );
		textSprite.centerAnchor();
		textSprite.setXY( width * .5, height * .5 );

        entity.addChild( new Entity().add( sprite ).addChild( new Entity().add( textSprite ) ) );
   	}

   	public function setXY( x:Float, y:Float ){
   		sprite.setXY( x, y );
   		textSprite.setXY( width * .5, height * .5 );
   	}
}