RadioButton radioButton;

int x = 100;
int y = 150;
int radioValue = 0;
PFont font;

PImage labels, scale, iUSA, iAL, iAK, iAZ, iAR, iCA, iCO, iCT, iDE, iFL, iGA, iHI, iID, iIL, iIN, iIA, iKS, iKY, 
  iLA, iME, iMD, iMA, iMI, iMN, iMS, iMO, iMT, iNE, iNV, iNH, iNJ, iNM, iNY, iNC, iND, iOH, iOK, iOR, 
  iPA, iRI, iSC, iSD, iTN, iTX, iUT, iVT, iVA, iWA, iWV, iWI, iWY;

Table tUSA, tAL, tAK, tAZ, tAR, tCA, tCO, tCT, tDE, tFL, tGA, tHI, tID, tIL, tIN, tIA, tKS, tKY, tLA, 
  tME, tMD, tMA, tMI, tMN, tMS, tMO, tMT, tNE, tNV, tNH, tNJ, tNM, tNY, tNC, tND, tOH, tOK, tOR, tPA, 
  tRI, tSC, tSD, tTN, tTX, tUT, tVT, tVA, tWA, tWV, tWI, tWY;

int rAL, rAK, rAZ, rAR, rCA, rCO, rCT, rDE, rFL, rGA, rHI, rID, rIL, rIN, rIA, rKS, rKY, rLA, rME, rMD, 
  rMA, rMI, rMN, rMS, rMO, rMT, rNE, rNV, rNH, rNJ, rNM, rNY, rNC, rND, rOH, rOK, rOR, rPA, rRI, rSC, rSD, 
  rTN, rTX, rUT, rVT, rVA, rWA, rWV, rWI, rWY;

String[] states = { "AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", 
  "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", 
  "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"};

float[] scaleMinValuesF = { 50, 450000, 5, 300000, 7, 500000, 5, 0, 0.5 };
float[] scaleMaxValuesF = { 4300, 40000000, 40, 25000000, 55, 35000000, 50, 350, 3 };

String[] scaleMinValues = { "50", "450,000", "5.0", "300,000", "7.0", "500,000", "5.0", "0", "0.5" };
String[] scaleMaxValues = { "4,300", "40,000,000", "40.0", "25,000,000", "55.0", "35,000,000", "50.0", "350", "3.0"};

int year = 1994;
String[] years = { "1994", "1995", "1996", "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", "2006", 
  "2007", "2008", "2009", "2010", "2011", "2012", "2013" };

String[] options = { 
  "Fatalities", 
  "Resident Population (Thousands)", 
  "Fatality Rate per 100,000 Population", 
  "Licensed Drivers (Thousands)", 
  "Fatality Rate per 100,000 Licensed Drivers", 
  "Registered Motor Vehicles (Thousands)", 
  "Fatality Rate per 100,000 Registered Vehicles", 
  "Vehicle Miles Traveled (Billions)", 
  "Fatality Rate per 100 Million VMT"
};

String[] stringOptions = { 
  "Fatalities", 
  "Population", 
  "Fatalities per 100,000 population", 
  "Licensed drivers", 
  "Fatality rate per 100,000 licensed drivers", 
  "Registered motor vehicles", 
  "Fatality rate per 100,000 registered vehicles", 
  "Vehicle miles traveled (billions)", 
  "Fatality rate per 100 million vehicle miles traveled"
};


String title = "Vehicle fatalities in the United States, 1994 - 2013";



void setup() {
  size (1300, 700);
  font = loadFont("GillSans.vlw");

  radioButton = new RadioButton(x + 700, y + 70, stringOptions, "radioButton");
  //radioButton.setDebugOn();
  radioButton.setBoxFillColor(#FEFEFE);
  radioButton.setValue(radioValue);


  iUSA = loadImage("USA.png"); 
  scale = loadImage("scale.png");
  labels = loadImage("labels.png");

  iAL = loadImage("AL.png"); 
  iAK = loadImage("AK.png");
  iAZ = loadImage("AZ.png"); 
  iAR = loadImage("AR.png"); 
  iCA = loadImage("CA.png");
  iCO = loadImage("CO.png"); 
  iCT = loadImage("CT.png"); 
  iDE = loadImage("DE.png");
  iFL = loadImage("FL.png"); 
  iGA = loadImage("GA.png"); 
  iHI = loadImage("HI.png");
  iID = loadImage("ID.png"); 
  iIL = loadImage("IL.png"); 
  iIN = loadImage("IN.png");
  iIA = loadImage("IA.png");
  iKS = loadImage("KS.png"); 
  iKY = loadImage("KY.png");
  iLA = loadImage("LA.png"); 
  iME = loadImage("ME.png"); 
  iMD = loadImage("MD.png");
  iMA = loadImage("MA.png"); 
  iMI = loadImage("MI.png"); 
  iMN = loadImage("MN.png");
  iMS = loadImage("MS.png"); 
  iMO = loadImage("MO.png"); 
  iMT = loadImage("MT.png");
  iNE = loadImage("NE.png"); 
  iNV = loadImage("NV.png"); 
  iNH = loadImage("NH.png");
  iNJ = loadImage("NJ.png"); 
  iNM = loadImage("NM.png"); 
  iNY = loadImage("NY.png");
  iNC = loadImage("NC.png"); 
  iND = loadImage("ND.png"); 
  iOH = loadImage("OH.png");
  iOK = loadImage("OK.png"); 
  iOR = loadImage("OR.png"); 
  iPA = loadImage("PA.png");
  iRI = loadImage("RI.png"); 
  iSC = loadImage("SC.png");
  iSD = loadImage("SD.png");
  iTN = loadImage("TN.png"); 
  iTX = loadImage("TX.png");
  iUT = loadImage("UT.png");
  iVT = loadImage("VT.png"); 
  iVA = loadImage("VA.png"); 
  iWA = loadImage("WA.png");
  iWV = loadImage("WV.png"); 
  iWI = loadImage("WI.png"); 
  iWY = loadImage("WY.png");

  tUSA = loadTable("USA.csv", "header");
  tAL = loadTable("AL.csv", "header");
  tAK = loadTable("AK.csv", "header");
  tAZ = loadTable("AZ.csv", "header");
  tAR = loadTable("AR.csv", "header");
  tCA = loadTable("CA.csv", "header");
  tCO = loadTable("CO.csv", "header");
  tCT = loadTable("CT.csv", "header");
  tDE = loadTable("DE.csv", "header");
  tFL = loadTable("FL.csv", "header");
  tGA = loadTable("GA.csv", "header");
  tHI = loadTable("HI.csv", "header");
  tID = loadTable("ID.csv", "header");
  tIL = loadTable("IL.csv", "header");
  tIN = loadTable("IN.csv", "header");
  tIA = loadTable("IA.csv", "header");
  tKS = loadTable("KS.csv", "header");
  tKY = loadTable("KY.csv", "header");
  tLA = loadTable("LA.csv", "header");
  tME = loadTable("ME.csv", "header");
  tMD = loadTable("MD.csv", "header");
  tMA = loadTable("MA.csv", "header");
  tMI = loadTable("MI.csv", "header");
  tMN = loadTable("MN.csv", "header");
  tMS = loadTable("MS.csv", "header");
  tMO = loadTable("MO.csv", "header");
  tMT = loadTable("MT.csv", "header");
  tNE = loadTable("NE.csv", "header");
  tNV = loadTable("NV.csv", "header");
  tNH = loadTable("NH.csv", "header");
  tNJ = loadTable("NJ.csv", "header");
  tNM = loadTable("NM.csv", "header");
  tNY = loadTable("NY.csv", "header");
  tNC = loadTable("NC.csv", "header");
  tND = loadTable("ND.csv", "header");
  tOH = loadTable("OH.csv", "header");
  tOK = loadTable("OK.csv", "header");
  tOR = loadTable("OR.csv", "header");
  tPA = loadTable("PA.csv", "header");
  tRI = loadTable("RI.csv", "header");
  tSC = loadTable("SC.csv", "header");
  tSD = loadTable("SD.csv", "header");
  tTN = loadTable("TN.csv", "header");
  tTX = loadTable("TX.csv", "header");
  tUT = loadTable("UT.csv", "header");
  tVT = loadTable("VT.csv", "header");
  tVA = loadTable("VA.csv", "header");
  tWA = loadTable("WA.csv", "header");
  tWV = loadTable("WV.csv", "header");
  tWI = loadTable("WI.csv", "header");
  tWY = loadTable("WY.csv", "header");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      year--;
      if (year == 1993) year = 2013;
    }
    if (keyCode == RIGHT) {
      year++;
      if (year == 2014) year = 1994;
    }

    if (keyCode == DOWN) {
      radioValue = radioButton.getValue();
      radioValue++;
      if (radioValue == 9) radioValue = 0;
      radioButton.setValue(radioValue);
    }
    if (keyCode == UP) {
      radioValue = radioButton.getValue();
      radioValue--;
      if (radioValue == -1) radioValue = 9;
      radioButton.setValue(radioValue);
    }
  }
}

int getCurrentOption() {
  return radioButton.getValue();
}

int getYearValue() {
  return year - 1994;
}



void displayTotal(int i) {
  fill(250);
  textSize(30);
  text("Total for USA is " + i, width - 300, height - 100);
}

void displayTotal(String s) {
  fill(250);
  textSize(30);
  text("Total for USA is " + s, width - 300, height - 100);

}


double calculate(Table t) {
  
  // gbModifier changes the G and B values in the tint for each state
  double gbModifier = 0;
  
  int option = getCurrentOption();
  int yearVal = getYearValue();

  //-----------------
  //   Fatalities
  //-----------------
  if (option == 0) {
    TableRow row = t.getRow(yearVal + 1);
    int rawValue = row.getInt(options[option]);
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    String rawValueTotal = totalRow.getString(options[option]);
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }

  //-------------------------
  //   Resident population
  //-------------------------
  else if (option == 1) {
    TableRow row = t.getRow(yearVal + 1);
    int rawValue = (row.getInt(options[option])) * 1000;
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    int rawValueTotal = totalRow.getInt(options[option]) * 1000;
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }

  //--------------------------------------------
  //   Fataility rate per 100,000 population
  //--------------------------------------------
  else if (option == 2) {
    TableRow row = t.getRow(yearVal + 1);
    double rawValue = row.getDouble(options[option]);
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    String rawValueTotal = totalRow.getString(options[option]);
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }

  //------------------------
  //   Licensed drivers
  //------------------------
  else if (option == 3) {
    TableRow row = t.getRow(yearVal + 1);
    int rawValue = (row.getInt(options[option])) * 1000;
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    int rawValueTotal = totalRow.getInt(options[option]) * 1000;
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }

  //--------------------------------------------
  //   Fatality rate per 100,000 population
  //--------------------------------------------
  else if (option == 4) {
    TableRow row = t.getRow(yearVal + 1);
    double rawValue = row.getDouble(options[option]);
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    String rawValueTotal = totalRow.getString(options[option]);
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }

  //-------------------------------
  //   Registered motor vehicles
  //-------------------------------
  else if (option == 5) {
    TableRow row = t.getRow(yearVal + 1);
    int rawValue = (row.getInt(options[option])) * 1000;
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    int rawValueTotal = totalRow.getInt(options[option]) * 1000;
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }

  //--------------------------------------------------
  //   Fatality rate per 100,000 registered vehicles
  //--------------------------------------------------
  else if (option == 6) {
    TableRow row = t.getRow(yearVal + 1);
    double rawValue = row.getDouble(options[option]);
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    String rawValueTotal = totalRow.getString(options[option]);
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }

  //--------------------------------------------
  //   Vehicle miles traveled (billions)
  //--------------------------------------------
  else if (option == 7) {   
    TableRow row = t.getRow(yearVal + 1);
    int rawValue = row.getInt(options[option]);
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    String rawValueTotal = totalRow.getString(options[option]);
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }

  //---------------------------------------------------------
  //   Fatality rate per 100 million vehicle miles traveled
  //---------------------------------------------------------
  else if (option == 8) {
    TableRow row = t.getRow(yearVal + 1);
    double rawValue = row.getDouble(options[option]);
    
    TableRow totalRow = tUSA.getRow(yearVal + 1);
    String rawValueTotal = totalRow.getString(options[option]);
    displayTotal(rawValueTotal);

    gbModifier = (((rawValue - scaleMinValuesF[option])/scaleMaxValuesF[option]) * 255.0);
  }
  return gbModifier;
}




// other functions

void colour(Table t) {
  float gbModifier = (float)(calculate(t));
  tint(255.0, 255.0 - gbModifier, 255.0 - gbModifier);
}

String getScaleMin() {
  return scaleMinValues[getCurrentOption()];
}

String getScaleMax() {
  return scaleMaxValues[getCurrentOption()];
}



void draw() {
  
  // set background colour
  background(#2876c6);
  
  String scaleMin = getScaleMin();
  String scaleMax = getScaleMax();
  textFont(font);

  // update radio button
  radioButton.update();
  
  // draw current option under scale
  textAlign(CENTER);
  textSize(20);
  fill(250);
  text(stringOptions[radioButton.getValue()], x + 290, y + 475);

  // draw title
  textSize(48);
  text(title, width/2, 75);

  // draw scale values
  fill(0);
  textSize(20);
  text(scaleMin, x + 20, y + 465);
  text(scaleMax, x + 570, y + 465);
  
  // draw current year above map
  textSize(32);
  text(year, x + 300, y);

  // draw scale
  tint(255);
  image(scale, x + 20, y + 425);

  // draw map
  image(iUSA, x, y); 

  // colour and draw each state
  colour(tAL);
  image(iAL, x, y);
  colour(tAK);
  image(iAK, x, y);
  colour(tAZ);
  image(iAZ, x, y);
  colour(tAR);
  image(iAR, x, y); 
  colour(tCA);
  image(iCA, x, y); 
  colour(tCO);
  image(iCO, x, y); 
  colour(tCT);
  image(iCT, x, y);
  colour(tDE);
  image(iDE, x, y);
  colour(tFL);
  image(iFL, x, y);
  colour(tGA);
  image(iGA, x, y);
  colour(tHI);
  image(iHI, x, y);
  colour(tID);
  image(iID, x, y);
  colour(tIL);
  image(iIL, x, y);
  colour(tIN);
  image(iIN, x, y); 
  colour(tIA);
  image(iIA, x, y);
  colour(tKS);
  image(iKS, x, y);
  colour(tKY);
  image(iKY, x, y); 
  colour(tLA);
  image(iLA, x, y);
  colour(tME);
  image(iME, x, y);
  colour(tMD);
  image(iMD, x, y);
  colour(tMA);
  image(iMA, x, y);
  colour(tMI);
  image(iMI, x, y);
  colour(tMN);
  image(iMN, x, y);
  colour(tMS);
  image(iMS, x, y);
  colour(tMO);
  image(iMO, x, y);
  colour(tMT);
  image(iMT, x, y);
  colour(tNE);
  image(iNE, x, y);
  colour(tNV);
  image(iNV, x, y);
  colour(tNH);
  image(iNH, x, y); 
  colour(tNJ);
  image(iNJ, x, y);
  colour(tNM);
  image(iNM, x, y);
  colour(tNY);
  image(iNY, x, y);
  colour(tNC);
  image(iNC, x, y);
  colour(tND);
  image(iND, x, y);
  colour(tOH);
  image(iOH, x, y);
  colour(tOK);
  image(iOK, x, y);
  colour(tOR);
  image(iOR, x, y);
  colour(tPA);
  image(iPA, x, y);
  colour(tRI);
  image(iRI, x, y);
  colour(tSC);
  image(iSC, x, y);
  colour(tSD);
  image(iSD, x, y);
  colour(tTN);
  image(iTN, x, y);
  colour(tTX);
  image(iTX, x, y);
  colour(tUT);
  image(iUT, x, y);
  colour(tVT);
  image(iVT, x, y);
  colour(tVA);
  image(iVA, x, y);
  colour(tWA);
  image(iWA, x, y);
  colour(tWV);
  image(iWV, x, y);
  colour(tWI);
  image(iWI, x, y);
  colour(tWY);
  image(iWY, x, y);
  
  // draw state names
  image(labels, x, y);
}