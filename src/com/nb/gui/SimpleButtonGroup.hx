/*

Entity Group - Arrange collection of entity vertical/horizontally.
-----------------------------

Example Usage:

var playButton:SimpleButton = new SimpleButton( "Hello", fontArial, 100, 70, 0xFF0000 );

var simpleButtonGroup:SimpleButtonGroup = new SimpleButtonGroup();
simpleButtonGroup.add( playButton );
simpleButtonGroup.add( playButton2 );

this.addChild( simpleButtonGroup.entity );

*/

package com.nb.gui;

import flambe.Entity;
import flambe.display.Sprite;
import flambe.display.FillSprite;
import flambe.display.TextSprite;
import flambe.display.Font;
import flambe.input.PointerEvent;

enum GroupDirection {
  Vertical;
  Horizontal;
}

class SimpleButtonGroup
{
  public var entity(default, null):Entity;
  private var buttonGroup:Array<SimpleButton>;

  public var margin(default, set):Int = 10;
  public var direction(default, set):GroupDirection = GroupDirection.Vertical;

  public var x(default,null):Float = 0;
  public var y(default,null):Float = 0;
  public var height(default,null):Int = 0;
  public var width(default,null):Int = 0;
  private var centered:Bool = false;

  public function new ():Void
  {
    entity = new Entity();
    buttonGroup = [];
  }

  public function add( button:SimpleButton ):SimpleButton 
  {
    buttonGroup.push( button );
    render();
    return button;
  }

  public function render():Void
  {
    if( buttonGroup.length <= 0 ) return;

    calcTotalDimensions();

    var button:SimpleButton, dimensionsAndMargin:Int = ( direction == GroupDirection.Vertical ) ? buttonGroup[0].height + margin : buttonGroup[0].width + margin;

    for( i in 0...buttonGroup.length )
    {
      button = buttonGroup[i];

      if( direction == GroupDirection.Vertical ){
        
        button.setXY( x, y + ( i * dimensionsAndMargin ) );
      } else {

        button.setXY( x + ( i * dimensionsAndMargin ), y );
      }

      entity.addChild( button.entity );
    }

    updateXY( x, y );
  }

  public function setXY( _x:Float, _y:Float ):SimpleButtonGroup {
    updateXY( _x, _y);
    render();
    return this;
  }

  private function updateXY( _x:Float, _y:Float ):Void {
    x = ( !centered ) ? _x : _x - ( width * .5 );
    y = ( !centered ) ? _y : _y - ( height * .5 );
  }

  public function centerAnchor():SimpleButtonGroup {
    centered = true;
    setXY( x, y );
    return this;
  }

  public function set_margin( value:Int ):Int {
    margin = value;
    render();
    return margin;
  }

  public function set_direction( value:GroupDirection ):GroupDirection {
    direction = value;
    render();
    return direction;
  }

  private function calcTotalDimensions():Void{
    if( buttonGroup.length <= 0 ) return;

    // TODO: Assumes all buttons are same dimensions, iterate through to get max width/height;

    if( direction == GroupDirection.Vertical ){
      height = ( ( buttonGroup[0].height + margin ) * buttonGroup.length ) - margin; // remove last margin.
      width = buttonGroup[0].width;
    } else {
      height = buttonGroup[0].height;
      width = ( ( buttonGroup[0].width + margin ) * buttonGroup.length ) - margin; // remove last margin.
    }
  }

}