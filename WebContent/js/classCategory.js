    var cnt2 = new Array();
    cnt2[0] = new Array('전체');
    cnt2[1] = new Array('전체', '축구','야구','자전거');
    cnt2[2] = new Array('전체','기타','피아노','보컬');
    cnt2[3] = new Array('전체','수채화','만화','드로잉');
    cnt2[4] = new Array('전체','사진');
    cnt2[5] = new Array('전체','꽃꽂이');
    cnt2[6] = new Array('전체','PC','CONSOLE');
    cnt2[7] = new Array('전체','문학','이학','공학','예술학');
    cnt2[8] = new Array('전체','요리');
    cnt2[9] = new Array('전체','마술');
    cnt2[10] = new Array('전체','댄스');
    cnt2[11] = new Array('전체','자수');
    cnt2[12] = new Array('전체','기타');

    function change2(add2) {
        var sel2=document.createLecutre.cate2;
        for (i=sel2.length-1; i>=0; i--){
            sel2.options[i] = null
        }
        for (i=0; i < cnt2[add2].length;i++){
            sel2.options[i] = new Option(cnt2[add2][i], cnt2[add2][i]);
        }
    }