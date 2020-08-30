class Clock{
  
  int value;
  int l = 0;
  
  int first[] = { 0x7E, 0x30, 0x6D, 0x79, 0x33, 0x5B, 0x5F, 0x70, 0x7F, 0x7B };
  int second[] = { 0x7E, 0x30, 0x6D, 0x79, 0x33, 0x5B, 0x5F};
  int h2 = 0, h1 = 0, m2 = 0, m1 = 0, s2 = 0, s1 = 0;
  
  Clock(int hours, int mins, int secs){
    if(hours >= 10){
      h1 = hours % 10;
      h2 = hours / 10;
    } else h1 = hours;
    if(mins >= 10){
      m1 = mins % 10;
      m2 = mins / 10;
    }else m1 = mins;
    if(secs >= 10){
      s1 = secs % 10;
      s2 = secs / 10;
    }
  }
  
  
  void update(){
    ++s1;
    if( h2 == 2 && h1 == 4){
      h2 = 0;
      h1 = 0;
    }
    if(s1 > 9){
     s1 = 0;
     s2++;
    }
    if(s2 > 5){
      s2 = 0;
      m1++;
    }
    if(m1 > 9){
      m1 = 0;
      m2++;
    }
    if(m2 > 5){
      m2 = 0;
      h1++;
    }if(h1 > 9){
     h1 = 0;
     h2++;
    }
  }
  void dots(){
    if(l % 2 == 0){
      fill(255,50,10);
      ellipse(440,230, 10, 10);
      ellipse(440,280, 10, 10);
      ellipse(760,230, 10, 10);
      ellipse(760,280, 10, 10);
    }
    l++;
  }
  void digits(){
    noStroke();
    // ------- PIRMAS DIGIT ------
    // A
    if(((second[h2] >> 6) & 1)==1)fill(255,50,10);else fill(50);
    rect(195, 175, 50, 20, 20);
    // B
    if(((second[h2] >> 5) & 1)==1)fill(255,50,10);else fill(50);
    rect(245, 195, 20, 50, 20);
    // C
    if(((second[h2] >> 4) & 1)==1)fill(255,50,10);else fill(50);
    rect(245, 265, 20, 50, 20);
    // D
    if(((second[h2] >> 3) & 1)==1)fill(255,50,10);else fill(50);
    rect(195, 315, 50, 20, 20);
    // E
    if(((second[h2] >> 2) & 1)==1)fill(255,50,10);else fill(50);
    rect(175, 265, 20, 50, 20);
    // F
    if(((second[h2] >> 1) & 1)==1)fill(255,50,10);else fill(50);
    rect(175, 195, 20, 50, 20);
    // G
    if(((second[h2] >> 0) & 1)==1)fill(255,50,10);else fill(50);
    rect(195, 245, 50, 20, 20);
    
    
    
    // ------- ANTRAS DIGIT ------
    // A
    if(((first[h1] >> 6) & 1)==1)fill(255,50,10);else fill(50);
    rect(315, 175, 50, 20, 20);
    
    // B
    if(((first[h1] >> 5) & 1)==1)fill(255,50,10);else fill(50);
    rect(365, 195, 20, 50, 20);
    
    // C
    if(((first[h1] >> 4) & 1)==1)fill(255,50,10);else fill(50);
    rect(365, 265, 20, 50, 20);
    // D
    if(((first[h1] >> 3) & 1)==1)fill(255,50,10);else fill(50);
    rect(315, 315, 50, 20, 20);
    // E
    if(((first[h1] >> 2) & 1)==1)fill(255,50,10);else fill(50);
    rect(295, 265, 20, 50, 20);
    // F
    if(((first[h1] >> 1) & 1)==1)fill(255,50,10);else fill(50);
    rect(295, 195, 20, 50, 20);
    // G
    if(((first[h1] >> 0) & 1)==1)fill(255,50,10);else fill(50);
    rect(315, 245, 50, 20, 20);
    
    
    // ------- TRECIAS DIGIT ------
    // A
    if(((second[m2] >> 6) & 1)==1)fill(255,50,10);else fill(50);
    rect(515, 175, 50, 20, 20);
    
    // B
    if(((second[m2] >> 5) & 1)==1)fill(255,50,10);else fill(50);
    rect(565, 195, 20, 50, 20);
    
    // C
    if(((second[m2] >> 4) & 1)==1)fill(255,50,10);else fill(50);
    rect(565, 265, 20, 50, 20);
    // D
    if(((second[m2] >> 3) & 1)==1)fill(255,50,10);else fill(50);
    rect(515, 315, 50, 20, 20);
    // E
    if(((second[m2] >> 2) & 1)==1)fill(255,50,10);else fill(50);
    rect(495, 265, 20, 50, 20);
    // F
    if(((second[m2] >> 1) & 1)==1)fill(255,50,10);else fill(50);
    rect(495, 195, 20, 50, 20);
    // G
    if(((second[m2] >> 0) & 1)==1)fill(255,50,10);else fill(50);
    rect(515, 245, 50, 20, 20);
    
    // ------- KETVIRTAS DIGIT ------
    // A
    if(((first[m1] >> 6) & 1)==1)fill(255,50,10);else fill(50);
    rect(635, 175, 50, 20, 20);
    
    // B
    if(((first[m1] >> 5) & 1)==1)fill(255,50,10);else fill(50);
    rect(685, 195, 20, 50, 20);
    
    // C
    if(((first[m1] >> 4) & 1)==1)fill(255,50,10);else fill(50);
    rect(685, 265, 20, 50, 20);
    // D
    if(((first[m1] >> 3) & 1)==1)fill(255,50,10);else fill(50);
    rect(635, 315, 50, 20, 20);
    // E
    if(((first[m1] >> 2) & 1)==1)fill(255,50,10);else fill(50);
    rect(615, 265, 20, 50, 20);
    // F
    if(((first[m1] >> 1) & 1)==1)fill(255,50,10);else fill(50);
    rect(615, 195, 20, 50, 20);
    // G
    if(((first[m1] >> 0) & 1)==1)fill(255,50,10);else fill(50);
    rect(635, 245, 50, 20, 20);
    
    // ------- PENKTAS DIGIT ------
    // A
    if(((second[s2] >> 6) & 1)==1)fill(255,50,10);else fill(50);
    rect(835, 175, 50, 20, 20);
    
    // B
    if(((second[s2] >> 5) & 1)==1)fill(255,50,10);else fill(50);
    rect(885, 195, 20, 50, 20);
    
    // C
    if(((second[s2] >> 4) & 1)==1)fill(255,50,10);else fill(50);
    rect(885, 265, 20, 50, 20);
    // D
    if(((second[s2] >> 3) & 1)==1)fill(255,50,10);else fill(50);
    rect(835, 315, 50, 20, 20);
    // E
    if(((second[s2] >> 2) & 1)==1)fill(255,50,10);else fill(50);
    rect(815, 265, 20, 50, 20);
    // F
    if(((second[s2] >> 1) & 1)==1)fill(255,50,10);else fill(50);
    rect(815, 195, 20, 50, 20);
    // G
    if(((second[s2] >> 0) & 1)==1)fill(255,50,10);else fill(50);
    rect(835, 245, 50, 20, 20);
    
    // ------- SESTAS DIGIT ------
    // A
    if(((first[s1] >> 6) & 1)==1)fill(255,50,10);else fill(50);
    rect(955, 175, 50, 20, 20);
    
    // B
    if(((first[s1] >> 5) & 1)==1)fill(255,50,10);else fill(50);
    rect(1005, 195, 20, 50, 20);
    
    // C
    if(((first[s1] >> 4) & 1)==1)fill(255,50,10);else fill(50);
    rect(1005, 265, 20, 50, 20);
    // D
    if(((first[s1] >> 3) & 1)==1)fill(255,50,10);else fill(50);
    rect(955, 315, 50, 20, 20);
    // E
    if(((first[s1] >> 2) & 1)==1)fill(255,50,10);else fill(50);
    rect(935, 265, 20, 50, 20);
    // F
    if(((first[s1] >> 1) & 1)==1)fill(255,50,10);else fill(50);
    rect(935, 195, 20, 50, 20);
    // G
    if(((first[s1] >> 0) & 1)==1)fill(255,50,10);else fill(50);
    rect(955, 245, 50, 20, 20);
    
    
    

  }
  
  
}
