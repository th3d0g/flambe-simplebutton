package com.matmi.utils;

class TimeUtils
{
  public static function timeInMinutes( t:Float ):Int
  {
      return Math.floor( t / 60 );
  }

  public static function timeInSeconds( t:Float ):Int
  {
      return Math.floor( t % 60 );
  }

  public static function timeInMilliseconds( t:Float ):Int
  {
      return Math.round( t * 1000 ) % 1000;
  }
}
