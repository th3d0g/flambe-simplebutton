package urgame;

import flambe.Entity;
import flambe.System;
import flambe.asset.AssetPack;
import flambe.asset.Manifest;
import flambe.display.FillSprite;
import flambe.display.ImageSprite;
import com.nb.gui.SimpleButton;
import com.nb.gui.SimpleButtonGroup;
import flambe.display.Font;
import flambe.input.PointerEvent;

class Main
{
    private static function main ()
    {
        // Wind up all platform-specific stuff
        System.init();

        // Load up the compiled pack in the assets directory named "bootstrap"
        var manifest = Manifest.fromAssets("bootstrap");
        var loader = System.loadAssetPack(manifest);
        loader.get(onSuccess);
    }

    private static function onSuccess (pack :AssetPack)
    {
        // Add a solid color background
        var background = new FillSprite(0x202020, System.stage.width, System.stage.height);
        System.root.addChild(new Entity().add(background));

        // Font
        var fontArial = new Font( pack, "Arial" );

        // Button Group
        var simpleButtonGroup:SimpleButtonGroup = new SimpleButtonGroup();   
        simpleButtonGroup.centerAnchor().setXY( System.stage.width * .5, System.stage.height * .5 );
        System.root.addChild( simpleButtonGroup.entity );

        // Buttons
        var button1:SimpleButton = new SimpleButton( "Button 1", fontArial );
        button1.onClick( function( event:PointerEvent ){
            trace("Button 1 clicked.");
        });
        simpleButtonGroup.add( button1 );

        var button2:SimpleButton = new SimpleButton( "Button 2", fontArial );
        button2.onClick( function( event:PointerEvent ){
            trace("Button 2 clicked.");
        });
        simpleButtonGroup.add( button2 );
    }
}
