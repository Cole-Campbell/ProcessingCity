XML xml;
String url = "http://weather.yahooapis.com/forecastrss?w=23397329";
String condition;

void setup() {
  size(500, 500);
  xml = loadXML (url);
  XML channel = xml.getChild("channel");
  XML forecast = channel.getChild("yweather:forecast");
}