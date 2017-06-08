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
  String url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(4418)%20where%20text%3D%22Toronto%2C%20ON%22)&format=xml&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys";
  //Creates XML and variable to store the URL from local XML
  XML weatherXML;
  String weatherUrl = "weather.xml";

  Sky() {
    //Parses through the XML, going through the data to collect what is needed
    xml = loadXML (url);
    XML results = xml.getChild("results");
    XML channel = results.getChild("channel");
    XML item = channel.getChild ("item");
    condition = item.getChild ("yweather:forecast");
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