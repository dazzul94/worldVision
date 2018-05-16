<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<!-- header -->
	<%@include file="/WEB-INF/jsp/index/top.jsp" %>
	<!-- /header -->
    
    <section id="container">
    	<article id="lnbWrap">
        	<h2>CHOIR</h2>
            <ul>
            	<li><a href="choir">소개</a></li>
                <li><a href="choir2">연혁</a></li>
                <li><a href="choir3">연주반</a></li>
                <li><a href="choir4">지역반</a></li>
            </ul>
            <p><a href="#"><img src="${contextPath }/images/index/sub_banner1.gif" alt=""/></a></p>
        </article>
        <article id="contentWrap">
        	<p class="page_nav">HOME &gt; CHOIR &gt; <strong>합창단 소개</strong></p>
            <div class="sub_visual"><img src="${contextPath }/images/index/sub_top.jpg" alt=""/></div>
            
            <!-- 서브내용 시작 -->
          <div class="subWrap">
            	<div class="titleWrap">
            		<h3>합창단 소개<span>월드비전 합창단의 비전은 모든 어린이의 풍성한 삶입니다.</span></h3>
            	</div>
                <script language="javascript">
function tab_menu(val, path){
	var img = new Array('','about02_tap1_','about02_tap2_');
	for(i = 1; i <= 2; i++) { //탭메뉴 갯수
		if(i==val) {
			document.getElementById("contents"+i).style.display = "";
			document.getElementById("contents_img"+i).src = path + "/images/index/"+img[i]+"on.gif";
		}else {
			document.getElementById("contents"+i).style.display = "none";
			document.getElementById("contents_img"+i).src = path + "/images/index/"+img[i]+"off.gif";
		}
	}
}

window.onload = function() {
	var offset=location.href.indexOf(location.host)+location.host.length;
    var ctxPath=location.href.substring(offset,location.href.indexOf('/',offset+1));

	tab_menu("1", ctxPath);
}
</script>
            	<div class="contentWrap">
                	<ul class="tabul">
                    	<li><img src="${contextPath }/images/index/about02_tap1_on.gif" style="cursor:pointer" id="contents_img1" onclick="tab_menu(1, '${contextPath}')"></li>
                        <li><img src="${contextPath }/images/index/about02_tap2_off.gif" style="cursor:pointer" id="contents_img2" onclick="tab_menu(2, '${contextPath}')"></li>
                    </ul>
                
  
    <!-- 탭1 내용 -->
    <div id="contents1">
    	<h3 class="wonh3">월드비전 합창단</h3>  
<p class="mb30">국제구호개발기구 월드비전을 통해 1960년 8월 창단한 월드비전 합창단(구, 선명회어린이합창단)은 외국 음악 전문가들로부터 ‘천상의 메아리’라는 찬사를 받아 왔다. 메트로폴리탄 오페라극장 프리마돈나 소프라노 홍혜경, 세계 3대 카운터테너 이동규, 뉴욕타임스가 극찬한 소프라노 강혜정 등 걸출한 성악가를 배출하며 대한민국 대표 문화외교사절단으로 활동하고 있다.  <br>
  <br>
  월드비전 합창단은 2000년도부터 세계정상급 어린이,청소년 합창단을 초청하는  ‘세계어린이합창제’를 3년마다 개최하고 있으며, 매년 3,000여 명의 가난과 질병으로 고통당하는 지구촌 어린이들을 위해 희망을 노래하고 있다.  <br>
  <br>
  주요 수상내역 2016년 헝가리 제 11회 칸테무스 국제합창 페스티벌, 그랑프리상 2013년 필리핀 Andrea O. Veneracion 국제합창 페스티벌, 민속음악부분 대상 1978년 영국 BBC 주최 세계합창경연대회, 최우수상 </p>
  
  		<p><img src="${contextPath }/images/index/about_e0203_img.jpg"/></p>
        
        <div class="mt50">
       	 	<h3 class="wonh3">합창단 연주 소개</h3>  	
        	<div class="floatL" style="width:280px"><img src="${contextPath }/images/index/about_k0220_img1.jpg"/></div>
            <div class="floatR" style="width:420px">
            <h4 class="wonh4">기획연주</h4>
            <p>월드비전 합창단은 어린이와 청소년들의 문화발전을 위한 다양한 기획연주를 통해 새로운 장르와 퍼포먼스의 시도로 합창문화 발전에 기여하고 있다.</p>
            <ul class="pt20">
              <li>- 신데렐라/세종문화회관 (1980)</li>
              <li>- 요정과 인형/예술의 전당 (1994)</li>
              <li>- Memoire / 코엑스 오디토리움 (2005)</li>
              <li>- Image 樂/세종문화회관 (2007~2009)</li>
              <li>- Count yout Blessing / 월드글로리아센터 (2007)</li>
              <li>- 사랑과 감사의 축제/세종문화회관 (2010)</li>
              <li>- Hymn festival/세종문화회관 (2011~2012)</li>
              <li>- 선명회어린이합창단을 만나다./ 세종문화회관 (2013)</li>
              <li>- 뮤지컬 '굿모닝 피니아스' / 영락교회 베다니홀, 동숭교회</li>
              <li>- Together / 예술의 전당 (2014)</li>
              <li>- Amazing Lovw / 예술의 전당 (2015)</li>
              <li>- Carols for Christmas / 고양아람누리 (2016) </li>
			  <li>- 세계민요 합창 모험극 '바다와 피리' / 세종문화회관 (2017) </li>              
              </ul>
          </div> 
        </div>
        <div class="clear mb30"></div>
        <div class="floatL" style="width:280px"><img src="${contextPath }/images/index/about_k0221_img.jpg"></div>
             <div class="floatR" style="width:420px">
       			 <h4 class="wonh4"> 해외연주 </h4>
       			 <p>1961년 제 1차 해외연주를 시작으로 55회 이상의 해외연주를 통해 미국, 독일, 핀란드 등 전 세계 55개국 75여 도시에서 1,500회 이상 연주를 했다. <br>
          		<strong>해외연주는 월드비전 합창단의 소리를 전 세계에 알리는 것뿐 아니라 한국의 문화 예술을 알리는 문화 외교사절의 역할을 감당하고 있다. </strong></p>
        </div>
        <div class="clear mb30"></div>
        <div class="floatL" style="width:280px"><img src="${contextPath }/images/index/about_k0222_img.jpg"></div>
        <div class="floatR" style="width:420px">
        <h4 class="wonh4">초청연주</h4>
        <p>국제회의, 정부 및 기업 등의 행사에 초청되어 다양한 레파토리로 아름다운 합창의 소리와 퍼포먼스로 관객에게 감동을 선사하며 초청 기관의 성공적인 행사를 지원한다.</p>
        <ul class="pt20">
        <li>- 서울 I.P.U 총회 연주</li>
        <li>- 카터 미 대통령 방한시 연주 </li>
        <li>- 제 15차 ANwOC국제회의 연주</li>
        <li>- 국제총장회의 연주 </li>
        <li>- 2006 Digital Opportunity Forum 연주</li>
        <li>- 한미연합사 초청 연주&lt;</li>
 		<li>- 제 5회 제천국제음악영화제 초청 연주</li>
 		<li>- 2010~2013 정명훈 서울시향의 어린이날 음악선물 </li>
 		<li>- 하이서울 페스티벌 </li>
 		<li>- G20 셰르파(sherpa)회의 축하공연 </li>
 		<li>- 한일수교 50주년 기념식</li>
 </ul>
</div>
<div class="clear mb30"></div>
		<div class="floatL" style="width:280px"><img src="${contextPath }/images/index/about_k0223_img.jpg"></div>
       <div class="floatR" style="width:420px"> <h4 class="wonh4"> 월드비전 세계어린이합창제 <a href="http://wvchoirfestival.or.kr/" target="_blank"><img src="${contextPath }/images/index/about_k0209_bgo1.gif" border="0"></a></h4>
          <p>월드비전 세계어린이합창제는 특별히 UN의 아동권리 협약에 따른 지구촌 어린이들의 평화와 안정을 추구하고 소외된 아이들에게 희망의 소리를 전하기 위해 '어린이가 안전한 세상을 꿈꾸며(Imagine a World where children are Safe)'를 주제로 국내외에서 손꼽히는 어린이 및 청소년합창단이 참가하는 국내 유일의 세계어린이와 청소년들의 합창 대축제이다. 이 합창제는 매 3년마다 개최된다.<br>
            2000년 제 1회를 시작으로(원장.박종구, 상임지휘. 권영일) 지난해 5번째 개최했다. 세계어린이합창제는 지구촌 어린이들의 평화와 안전을 추구하는데 앞장서기 위해 열린다.<br>
          월드비전 세계어린이합창제는 세게 어린이와 청소년들이 함께 모여 전 세계 어린이들의 평화를 노래하며 문화, 음악 �Z고 우정을 나누는 합창 대축제이다.<br>
          </p><ul class="pt20">
          <li>- 2000 월드비전 세계어린이합창제 (음악감독 윤학원)</li>
          <li>- 2004 월드비전 세계어린이합창제 (음악감독 윤학원)</li>
          <li>- 2007 월드비전 세계어린이합창제 (음악감독 김희철)</li>
          <li>- 2010 월드비전 세계어린이합창제 (음악감독 김희철)</li>
          <li>- 2013 월드비전 세계어린이합창제 (음악감독 김희철)</li>
          <li>- 2016 월드비전 세계어린이합창제 (원장. 박종구, 지휘. 권영일) </li>     
          </ul>
          </div>
    </div>
   
    <!-- 탭2 내용 -->
   <div id="contents2">
    	<h3 class="wonh3">World Vision Korea Children’s Choir</h3>  
<p class="mb30">World Vision Korea Children’s Choir has been bringing messages of hope and love to children around the world since 1960. <br>
  <br>
  After the Korean War, the World Vision organization brought aid from foreign sponsors to the country’s orphans and widows. Founded by Rev. Dr. Bob Pierce, World Vision Korea Children’s Choir was formed by those helped by World Vision.   <br>
  <br>
  Their mission was to sing about hope and love through Christ, and to seek more sponsorship. After winning the highest award at the prestigious ‘Let the Peoples Sing’ competition organized by the BBC in 1978, World Vision Korea Children’s Choir has gained international fame. The choir also performed for combines of traditions and fresh ideas to create the best choral music that is proud to be a role model in sharing peace, hope, and love.
<br/><br/>
In 2016, World Vision Korea Children’s Choir won a triple crown at Hugary Cantemus 11th International Choral Festival. and in 2013, Grand prize at Andrea O. Veneracion International Choral Festival Folk Music Division. </p>
  
  		<p><img src="${contextPath }/images/index/about_e0203_img.jpg"/></p>
        
        <div class="mt50">
       	 	<h3 class="wonh3">World Vision Korea Children’s Choir Concert</h3>  	
        	<div class="floatL" style="width:280px"><img src="${contextPath }/images/index/about_e0220_img.jpg"/></div>
            <div class="floatR" style="width:420px">
            <h4 class="wonh4">Planning Concert</h4>
            <p>World Vision Korea Children’s Choir have various planning concert for development of children and youth culture. So we contributes to the development of a chorus culture through new genre and try of performance</p>
            <ul class="pt20">
            <li>- Cinderella / Sejong Center for the  Performing Arts (1980)</li>
            <li>- The fairy and doll / Seoul Arts  center (1984)</li>
            <li>- Memoire / Coex Auditorium (2005)</li>
            <li>- Imagine 樂  / Sejong Center for the Performing Arts (2007~2009)</li>
            <li>- Count your Blessing / World Gloria  Center (2007)</li>
            <li>- Love &amp; Thanks / Sejong Center for  the Performing Arts (2010)</li>
            <li>- Hymn / Sejong Center for the  Performing Arts (2011, 2012)</li>
           <li> - Christmas Concert with Japan Dream  Navigation Choir (2011)</li>
           <li> - I meet World Vision Children’s Choir  / Sejong Center for the Performing Arts (2013)</li>
           <li> - Good Morning Pinias / Bethany Hall  (2013)</li>
            <li>- Together/ Seoul Arts Center (2014)</li>
           <li> - Together/ Uijeongbu Arts Center,  Gyeonggi Arts Center, Goyang Aramnuri (2014)</li>
           <li> - Amazing Love/ Seoul Arts Center (2015)</li>
         <li> - Carols for Christmas / Goyang Aram Nuri Arts Center (2016)</li>
         </ul>
          </div> 
        </div>
        <div class="clear mb30"></div>
        <div class="floatL" style="width:280px"><img src="${contextPath }/images/index/about_e0221_img.jpg"></div>
             <div class="floatR" style="width:420px">
       			 <h4 class="wonh4"> Abroad Concert </h4>
       			 <p>Since 1961, World Vision Korea Children’s Choir have played in fifty countries; U.S.A, Germany, Philand and all that stuff, seven hundred cities and given thousand concerts. <br>
          		<strong>This concert introduces World Vision Korea Children’s Choir as well as the excellence of Korean culture to the whole world.</strong></p>
        </div>
        <div class="clear mb30"></div>
        <div class="floatL" style="width:280px"><img src="${contextPath }/images/index/about_e0222_img.jpg"></div>
        <div class="floatR" style="width:420px">
        <h4 class="wonh4">The invitation Concert</h4>
        <p>World Vision Korea Children’s Choir perform a various repertory in international conference, Government events, Corporate events. We touched the audience and supported their successful events.</p>
        <ul class="pt20">
  <li>- The 63rd Constitution Day Anniversary  Concert.</li>
  <li>- The 2010 G20 Working-level talks Performance</li>
           <li> - Seoul I.P.U General Assembly  Performance</li>
           <li> - U.S.A Expresident Cater visit to  Korea Performance</li>
           <li> - The 15th ANOC International  Conference Performance</li>
           <li> - The International President  Conference Performance</li>
           <li> - The 2006 Digital Opportunity Forum  Performance</li>
           <li> - The ROK-US Combined Forces Command  (CFC) Performance</li>
           <li> - The 5th Jecheon International Music  &amp; Film Festival Performance</li>
           <li> - The 2010 Performance with Seoul  Philharmonic Orchestra (conductor Myung-hoon Chung)</li>
           <li> - Hi Seoul Festival</li>
           <li>- The 10th World Symposium for Choral  Music</li>
          </ul>
</div>
<div class="clear mb30"></div>
		<div class="floatL" style="width:280px"><img src="${contextPath }/images/index/about_e0223_img.jpg"></div>
       <div class="floatR" style="width:420px"> <h4 class="wonh4"> World Vison International Children’s Choir Festival</h4>
          <p>World Vision 2016 International Children's Choir Festival, which was first held by the cooperation between World Vision and Seoul Arts Center in 2000, marks the 6th festival this year. <br/>
          The theme of World Vision International Children’s Choir Festival was “Imagine a World Where Children are Safe” in 2000~2013. And “Song of Peace” was the theme of 2016.<br/>
           It devised in an attempt to make this festival sing about world peace and hope through music. Our theme was inspired by the UN Convention in the Rights of the Child, and aims to promote peace and stability for all the children of the world.  This festival open every three years<br>
          </p>
          </div>
          <div class="clear mb30"></div>
          <ul class="pt20">
            <li>- 2000 World Vision International  Children’s Choir Festival (Art Director Hack-won Yoon)</li>
           <li> - 2004 World Vision International  Children’s Choir Festival (Art Director Hack-won Yoon)</li>
           <li> - 2007 World Vision International  Children’s Choir Festival (Art Director. Hee-Churl Kim)</li>
           <li> - 2010 World Vision International  Children’s Choir Festival (Art Director. Hee-Churl Kim)</li>
          <li>  - 2013 World Vision International  Children’s Choir Festival (Art Director. Hee-Churl Kim)</li>
          <li>- 2016 World Vision International  Children’s Choir Festival (Director Jong-Gu Park, Principal Conductor Young-Ill  Kwon)</li>
          </ul>
          <div class="clear mb30"></div>
          <h3 class="wonh3"> World Vision Intermational Children's Choir Festival <a href="http://wvchoirfestival.or.kr/" target="_blank"><img src="${contextPath }/images/index/about_k0209_bgo1.gif" border="0"></a></h3>
    </div>
    
             </div>
            </div>
            <!-- 서브내용 끝 -->
        </article>
    </section>
    
    <!-- footer -->
	<%@include file="/WEB-INF/jsp/index/bottom.jsp" %>
    <!-- //footer -->
    
    
    <!-- quick menu 
    <script language="JavaScript" src="../js/jquery-1.9.1.min.js"></script>
    <div id="SP_toggleMenu_ver2">
		<div class="quick_menu">
     		<ul class="quick_menu">
     			<li><a href="#" target="_self">입단신청</a></li>
     			<li><a href="#" target="_self">음악감상실</a></li>
     			<li><a href="#" target="_self">영상갤러리</a></li>
     			<li><a href="#" target="_self">사진갤러리</a></li>
     			<li><a href="#" target="_self">월비통신</a></li>
			</ul>
		</div>
    	<div class="left_sp">
			<button id="toggle_btn_left" class="off">토글버튼</button>
		</div>
	</div>

    <script language="JavaScript" src="../js/rightquick.js"></script>
     //quick menu -->
</body>
</html>
