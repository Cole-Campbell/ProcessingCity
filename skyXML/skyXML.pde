//Created XML to store the 45 possible conditions of weather pulled from 
//Local XML file called Weather.xml
public XML [] localCondition = new XML[45];
String con;
public XML condition;
public int cloudPop;
public float windBlow;
public class Sky {

  //Creating XML and variables to store the URL for the Yahoo Weather Forecast of Toronto
  XML xml;
  String url = "http://weather.yahooapis.com/forecastrss?w=4118";
  //Creates XML and variable to store the URL from local XML
  XML weatherXML;
  String weatherUrl = "weather.xml";

  Sky() {
    //Parses through the XML, going through the data to collect what is needed
    xml = loadXML (url);
    XML channel = xml.getChild("channel");
    XML item = channel.getChild ("item");
    condition = item.getChild ("yweather:condition");
    con=condition.getString("text");

    //Condition print to varidy proper amounts are pulled later one
    println(con);

    weatherXML = loadXML (weatherUrl);

    localCondition = weatherXML.getChildren("condition");
  }
  void paint() {
    //For and If statement parsing through and comparing the conditon of the city
    //to the possible conditions available in the XML file. Once the condition has been matched
    //Variables will be stored from the appropriate line.
    for (int i = 0; i<=43; i++) { 

      String localCon=localCondition[i].getString("status");
      int localRed=localCondition[i].getInt("red");
      int localGreen=localCondition[i].getInt("green");
      int localBlue=localCondition[i].getInt("blue");

      //States that if the condition and local condition are equal that the background will
      //Be the colours from that conditions attributes. If not, there is an else statement
      //As a backup
      if (con.equals(localCon)) {

        background(localRed-cd, localGreen-cd, localBlue-cd);
        cloudPop=localCondition[i].getInt("clouds");
        windBlow=localCondition[i].getFloat("wind");
      } else {

        background(193-cd, 202-cd, 240-cd);
        cloudPop = 20;
        windBlow = 1.5;
      }
    }
  }
}