XML [] localCondition = new XML[38]; //<>//
String con;
public class Sky {

  XML xml;
  String url = "http://weather.yahooapis.com/forecastrss?w=560362";


  XML weatherXML;
  String weatherUrl = "weather.xml";

  XML condition;

  Sky() {
    xml = loadXML (url);
    XML channel = xml.getChild("channel");
    XML item = channel.getChild ("item");
    condition = item.getChild ("yweather:condition");
    con=condition.getString("text");


    weatherXML = loadXML (weatherUrl);

    localCondition = weatherXML.getChildren("condition");

    println(con);
  }
  void paint() {
    for (int i = 0; i<=38; i++) { 
      String localCon=localCondition[i].getString("status");
      int localRed=localCondition[i].getInt("red");
      int localGreen=localCondition[i].getInt("green");
      int localBlue=localCondition[i].getInt("blue");
      if (con.equals(localCon)) {
        background(localRed-cd, localGreen-cd, localBlue-cd);
      }
    }
  }
}