XML xml;
String url = "http://weather.yahooapis.com/forecastrss?w=560362";

XML weatherXML;
String weatherUrl = "weather.xml";

XML condition;

void setup() {
  size(500, 500);
  xml = loadXML (url);
  XML channel = xml.getChild("channel");
  XML item = channel.getChild ("item");
  condition = item.getChild ("yweather:condition");
  String con=condition.getString("text");

  size(500, 500);
  weatherXML = loadXML (weatherUrl);
  XML [] localCondition = new XML[38];
  localCondition = weatherXML.getChildren("condition");

  println(con);

  for (int i = 0; i<=38; i++) { 
    String localCon=localCondition[i].getString("status");
    int localRed=localCondition[i].getInt("red");
    int localGreen=localCondition[i].getInt("green");
    int localBlue=localCondition[i].getInt("blue");
    if (con.equals(localCon)) {
      background(localRed, localGreen, localBlue);
    }
  }
}