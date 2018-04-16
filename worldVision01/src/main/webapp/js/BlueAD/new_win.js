function view(img)  { 
  img1= new Image(); 
  img1.src=(img); 
  imgControll(img); 
} 

function imgControll(img) { 
  if((img1.width!=0)&&(img1.height!=0)) { 
    viewImage(img); 
  } 
  else  { 
    controller="imgControll('"+img+"')"; 
    intervalID=setTimeout(controller,20); 
  } 
}

function viewImage(img) { 
  var screen_ww,screen_hh; 
  screen_ww = screen.width; 
  screen_hh = screen.height; 
  screen_ww = screen_ww - 30; 
  screen_hh = screen_hh - 90; 
  W=img1.width; 
  H=img1.height; 
  if(screen_ww<W) { 
    W2 = screen_ww; 
    W3 = W2/W; 
    H2 = H * W3; 
  }
  else { 
    W2 = W; 
    H2 = H; 
  } 
  if(screen_hh<H2) { 
    H2 = screen_hh; 
    H3 = H2/H; 
    W2 = W * H3; 
  }
  else { 
    H2 = H2; 
    W2 = W2; 
  } 
  O="width="+W2+",height="+H2+",left=10,top=10"; 
  imgWin=window.open("","",O); 
  imgWin.document.write("<html><head><title>상세이미지보기</title></head>"); 
  imgWin.document.write("<body topmargin=0 leftmargin=0>"); 
  imgWin.document.write("<img src=\""+img+"\" width=\""+W2+"\" height=\""+H2+"\" onclick='self.close()' style='cursor:hand' alt='마우스를 클릭하시면 창이 닫힙니다.'>"); 
  imgWin.document.write("</body>"); 
  imgWin.document.write("</html>"); 
  imgWin.document.close(); 
} 