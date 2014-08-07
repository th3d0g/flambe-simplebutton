package com.matmi.utils;

class MathUtils
{
  	public static function randomBetween( min:Int, max:Int ):Int
  	{
    	return Math.round( min + (max - min) * Math.random() );
  	}

  	public static function valuePercentage( _value:Float, min:Float, max:Float ):Float {
		return ((( _value - min ) / ( max - min )) * 100 );
 	}
}
