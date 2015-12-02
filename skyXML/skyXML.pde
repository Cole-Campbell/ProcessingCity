public XML [] localCondition = new XML[45];
String con;
public XML condition;
public int cloudPop;
public int windBlow;
public class Sky {

  XML xml;
  String url = "http://weather.yahooapis.com/forecastrss?w=4118";

  XML weatherXML;
  String weatherUrl = "weather.xml";


  Sky() {
    xml = loadXML (url);
    XML channel = xml.getChild("channel");
    XML item = channel.getChild ("item");
    condition = item.getChild ("yweather:condition");
    con=condition.getString("text");

    println(con);

    weatherXML = loadXML (weatherUrl);

    localCondition = weatherXML.getChildren("condition");
  }
  void paint() {
    for (int i = 0; i<=43; i++) { 
      String localCon=localCondition[i].getString("status");
      int localRed=localCondition[i].getInt("red");
      int localGreen=localCondition[i].getInt("green");
      int localBlue=localCondition[i].getInt("blue");
      if (con.equals(localCon)) {
        background(localRed-cd, localGreen-cd, localBlue-cd);
        cloudPop=localCondition[i].getInt("clouds");
        windBlow=localCondition[i].getInt("wind");
      } else {
        background(193-cd, 202-cd, 240-cd);
      }
    }
  }
}