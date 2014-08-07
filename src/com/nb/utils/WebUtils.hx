package com.matmi.utils;

import flambe.System;

class WebUtils
{
  public static function openWindow( url:String, ?width:Int = 600, ?height:Int = 300 ){
    System.external.call( "openWindow", [
        url,
        width,
        height
    ]);
  }
}
