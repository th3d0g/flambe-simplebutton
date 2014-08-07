package com.matmi.utils;

class StringUtils
{
  public static function toTitleCase( original:String ):String {
    var words:Array<String> = original.split( " " );
    // Title case for one word.
    if( words.length <= 1 ) return toTitle( original );

    // Titlecase for more than one word.
    for( i in 0...words.length ) {
      words[i] = toTitle( words[i] );
    }

    return ( words.join( " " ) );
  }

  private static function toTitle( original:String ):String {
      return original.charAt( 0 ).toUpperCase(  ) + original.substring( 1 ).toLowerCase(  );
  }
}
