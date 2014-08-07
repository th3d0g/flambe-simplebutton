package com.matmi.utils;

import flambe.System;

class StorageUtils
{
  public static function get( key :String, defaultValue :Dynamic = null ) :Dynamic
  {
     return System.storage.get( key, defaultValue );
  }

  public static function set( key :String, value :Dynamic ) :Bool
  {
     return System.storage.set( key, value );
  }

  public static function remove( key :String ) :Void
  {
     return System.storage.remove( key );
  }

  public static function clear() :Void
  {
     return System.storage.clear();
  }
}
