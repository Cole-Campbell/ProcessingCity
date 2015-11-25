public class Sky { //<>//
  public color bgColor;
  String url = "http://weather.yahooapis.com/forecastrss?w=23397329";
  String cloudy="Cloudy";
  String tornado="Tornado";
  String tropicalStorm="Tropical Storm";
  String hurricane="Hurricane";
  String severeThunderstorms="Severe Thunderstorms";
  String thunderstorms="Thunderstorms";
  String mixedRainSleet="Mixed Rain And Sleet";
  String mixedRainSnow="Mixed Rain And Snow";
  String mixedSnowSleet="Mixed Snow And Sleet";
  String freezingDrizzle="Freezing Drizzle";
  String showers="Showers";
  String snowFlurries="Snow Flurries";
  String lightSnowShowers="Light Snow Showers";
  String blowingSnow="Blowing Snow";
  String snow="Snow";
  String hail="Hail";
  String sleet="Sleet";
  String dust="Dust";
  String foggy="Foggy";
  String haze="Haze";
  String smoky="Smoky";
  String blustery="Blustery";
  String windy="Windy";
  String cold="Cold";
  String mostlyCloudy="Mostly Cloudy";
  String partlyCloudy="Partly Cloudy";
  String clear="Clear";
  String sunny="Sunny";
  String fair="Fair";
  String mixedRainHail="Mixed Rain And Hail";
  String hot="Hot";
  String isolatedThunderstorms="Isolated Thunderstorms";
  String scatteredThunderstorms="Scattered Thunderstorms";
  String scatteredShowers="Scattered Showers";
  String heavySnow="Heavy Snow";
  String scatteredSnowShowers="Scattered Snow Showers";
  String thundershowers="Thundershowers";
  String snowShowers="Snow Showers";
  String isolatedThundershowers="Isolated Thundershowers";

  XML xml = loadXML (url);
  XML channel = xml.getChild("channel");
  XML item = channel.getChild ("item");
  XML condition = item.getChild ("yweather:condition");
  String con=condition.getString("text");
}
void setting(){

    if (con.equals(cloudy)||con.equals(partlyCloudy)||con.equals(mostlyCloudy) == true) {
      bgColor = color(173, 208, 214);
      background(173, 208, 214);
    } else if (con.equals(tornado)||con.equals(tropicalStorm)||con.equals(hurricane)) {
      background(106, 112, 101);
    } else if (con.equals(severeThunderstorms)||con.equals(thunderstorms)||con.equals(isolatedThunderstorms)||con.equals(scatteredThunderstorms)||con.equals(thundershowers)||con.equals(isolatedThundershowers)) {
      background(151, 157, 160);
    } else if (con.equals(mixedRainSnow)||con.equals(mixedSnowSleet)||con.equals(snowFlurries)||con.equals(lightSnowShowers)||con.equals(blowingSnow)||con.equals(snow)||con.equals(heavySnow)||con.equals(scatteredSnowShowers)||con.equals(snowShowers)) {
      background(221, 220, 216);
    } else if (con.equals(mixedRainSleet)||con.equals(freezingDrizzle)||con.equals(hail)||con.equals(sleet)||con.equals(mixedRainHail)) {
      background(173, 208, 214);
    } else if (con.equals(dust)||con.equals(foggy)||con.equals(haze)||con.equals(smoky)) {
      background(176, 206, 219);
      //This colour may be used as an overlay fog (174,177,180)//
    } else if (con.equals(clear)||con.equals(sunny)||con.equals(fair)||con.equals(hot)||con.equals(cold)||con.equals(windy)||con.equals(blustery)) {
      background(194, 202, 240);
    } else if (con.equals(showers)||con.equals(scatteredShowers)) {
      background(121, 155, 174);
    } else {
      background(137, 195, 234);
    }
  }