
@sys00	; 처음 서버 Setting하는 함수.

	MaxNPC( 50 )
	
	MapName( "G_battle" )
	
end	


@sys01 
end
@sys02
end
@sys03
end
@sys04
end
@sys05 
end
@sys06 
end
@sys07 
end
@sys08 
end
@sys09 
end




@Npc00000	
end
@Npc00001	; Guard
end
@Npc00002	; select battle-map  
	D("죄송합니다. 현재 콜로서스 맵을 선택할 수 있는 곳을 준비중입니다..")
	QuestTeleport(1,87,14)
end
@Npc00003	; view ladder point
;SQuest30_Npc00003
CmpQuestNumStep(30,0)
if( yes==1 ){
	UpDualClassItem(0)
	if(yes==0){
	D("乖옵鹿槨퀭�薨뙈팹짙Уツ餉뿐近팹쩔�鹿�薨�.")
	EventMsg("퀭깻청唐삿돤寧瘻廣覽，헝혼崑켓틱覩삿돤寧瘻廣覽.")		;Stay0
	SetQuestNumStep(30,0)
	goto End_QuestNpc00003 
}
	if(yes==1){
	D("乖옵鹿槨퀭�薨땃�퀭唐寧몸寧瘻廣覽矜狼�薨�.")
	EventMsg("矜狼20몸침제쏜橄.")
	D("뎃角乖矜狼20몸침제쏜橄꼽콘못퀭돨廣覽�薨땃�퀭던죄청唐？")		;Stay95
	SetQuestNumStep(30,95)
	goto End_QuestNpc00003 
}
	else{
	D("퀭돨廣覽綠쒔角랗瘻廣覽죄，壇맡�薨똑洶の팹�")		;Stay1005
	SetQuestNumStep(30,1005)
	goto End_QuestNpc00003 
}
}
CmpQuestNumStep(30,95)
	if(yes==1){
	D("乖矜狼돨20몸침제쏜橄퀭던윱죄청唐？.")		;Stay195
	SetQuestNumStep(30,195)
	goto End_QuestNpc00003 
}
 
CmpQuestNumStep(30,195)
	if(yes==1){
	CheckItemMulti(10239,20)
	if(yes==1){
	DeleteItemMulti(10239,20)
	if(yes==1){
	SendSound(0,1310)		;Stay295
	SetQuestNumStep(30,295)
	goto End_QuestNpc00003 
}
}
	else{
	D("청唐20몸침제쏜橄，乖轟랬槨퀭돨廣覽�薨�.")		;Stay195
	SetQuestNumStep(30,195)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,295)
	if(yes==1){
	IsClassPC(0)
	if(yes==1){
	UpDualClassItem(1)
	D("봤돨，퀭돨20몸침제쏜橄乖澗苟죄，君瞳앎槨퀭�薨�.")		;Stay1005
	SetQuestNumStep(30,1005)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay395
	SetQuestNumStep(30,395)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,395)
	if(yes==1){
	IsClassPC(1)
	if(yes==1){
	UpDualClassItem(1)
	D("봤돨，퀭돨20몸침제쏜橄乖澗苟죄，君瞳앎槨퀭�薨�.")		;Stay1005
	SetQuestNumStep(30,1005)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay495
	SetQuestNumStep(30,495)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,495)
	if(yes==1){
	IsClassPC(2)
	if(yes==1){
	UpDualClassItem(1)
	D("봤돨，퀭돨20몸침제쏜橄乖澗苟죄，君瞳앎槨퀭�薨�.")		;Stay1005
	SetQuestNumStep(30,1005)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay595
	SetQuestNumStep(30,595)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,595)
	if(yes==1){
	IsClassPC(3)
	if(yes==1){
	UpDualClassItem(1)
	ShowLearnDualMagic()
	D("봤돨，퀭돨20몸침제쏜橄乖澗苟죄，君瞳앎槨퀭�薨�.")		;Stay1005
	SetQuestNumStep(30,1005)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay695
	SetQuestNumStep(30,695)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,695)
	if(yes==1){
	IsClassPC(4)
	if(yes==1){
	UpDualClassItem(1)
	ShowLearnDualMagic()
	D("봤돨，퀭돨20몸침제쏜橄乖澗苟죄，君瞳앎槨퀭�薨�.")		;Stay1005
	SetQuestNumStep(30,1005)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay0
	SetQuestNumStep(30,0)
	goto End_QuestNpc00003 
}
}
CmpQuestNumStep(30,1005)
	if(yes==1){
	UpDualClassItem(0)
	if(yes==2){
	D("퀭돨랗瘻廣覽뻘옵鹿셨崎�薨땃Уナ핑祿脘�20몸疳襤돨輦外.")		;Stay1095
	SetQuestNumStep(30,1095)
	goto End_QuestNpc00003 
}
	else{
	D("퀭綠쒔角힛瘻廣覽죄，壇맡�薨똥켰の팹�")		;Stay1695
	SetQuestNumStep(30,1695)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1095)
	if(yes==1){
	CheckItemMulti(10240,20)
	if(yes==1){
	DeleteItemMulti(10240,20)
	if(yes==1){
	SendSound(0,1310)		;Stay1195
	SetQuestNumStep(30,1195)
	goto End_QuestNpc00003 
}
}
	else{
	D("乖옵鹿槨퀭�薨땃Уナ픔爀ぬ昭㈇陛�20몸疳襤돨輦外.")		;Stay1095
	SetQuestNumStep(30,1095)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1195)
	if(yes==1){
	IsClassPC(0)
	if(yes==1){
	UpDualClassItem(1)
	D("퀭廬角몸봤훙，20몸疳襤돨輦外乖澗苟죄.")		;Stay1695
	SetQuestNumStep(30,1695)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay1295
	SetQuestNumStep(30,1295)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1295)
	if(yes==1){
	IsClassPC(1)
	if(yes==1){
	UpDualClassItem(1)
	D("퀭廬角몸봤훙，20몸疳襤돨輦外乖澗苟죄.")		;Stay1695
	SetQuestNumStep(30,1695)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay1395
	SetQuestNumStep(30,1395)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1395)
	if(yes==1){
	IsClassPC(2)
	if(yes==1){
	UpDualClassItem(1)
	D("퀭廬角몸봤훙，20몸疳襤돨輦外乖澗苟죄.")		;Stay1695
	SetQuestNumStep(30,1695)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay1495
	SetQuestNumStep(30,1495)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1495)
	if(yes==1){
	IsClassPC(3)
	if(yes==1){
	UpDualClassItem(1)
	ShowLearnDualMagic()
	D("퀭廬角몸봤훙，20몸疳襤돨輦外乖澗苟죄.")		;Stay1695
	SetQuestNumStep(30,1695)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay1595
	SetQuestNumStep(30,1595)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1595)
	if(yes==1){
	IsClassPC(4)
	if(yes==1){
	UpDualClassItem(1)
	ShowLearnDualMagic()
	D("퀭廬角몸봤훙，20몸疳襤돨輦外乖澗苟죄.")		;Stay1695
	SetQuestNumStep(30,1695)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay0
	SetQuestNumStep(30,0)
	goto End_QuestNpc00003 
}
}
CmpQuestNumStep(30,1695)
	if(yes==1){
	UpDualClassItem(0)
	if(yes==3){
	D("봤죄，乖뻘옵鹿槨퀭돨廣覽�薨뚝뺨誇Уナ핑冷�20몸癩침돨뇰伎.")		;Stay1705
	SetQuestNumStep(30,1705)
	goto End_QuestNpc00003 
}
	else{
	D("乖돨콘제轟랬槨퀭돨廣覽�薨뗍�.....")
	SetQuestNumStep(30,1700)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1705)
	if(yes==1){
	CheckItemMulti(10241,20)
	if(yes==1){
	DeleteItemMulti(10241,20)
	if(yes==1){
	SendSound(0,1310)		;Stay1795
	SetQuestNumStep(30,1795)
	goto End_QuestNpc00003 
}
}
	else{
	D("헝퀭던��20몸癩침돨뇰伎疼윱冷乖.")		;Stay1705
	SetQuestNumStep(30,1705)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1795)
	if(yes==1){
	IsClassPC(0)
	if(yes==1){
	UpDualClassItem(1)
        D("앎뀌侶20몸癩침돨뇰伎죄，君瞳펭홍죄.")	;Stay2995
	SetQuestNumStep(30,2995)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay1895
	SetQuestNumStep(30,1895)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1895)
	if(yes==1){
	IsClassPC(1)
	if(yes==1){
	UpDualClassItem(1)
	D("앎뀌侶20몸癩침돨뇰伎죄，君瞳펭홍죄.")		;Stay2995
	SetQuestNumStep(30,2995)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay1995
	SetQuestNumStep(30,1995)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,1995)
	if(yes==1){
	IsClassPC(2)
	if(yes==1){
	UpDualClassItem(1)
	D("앎뀌侶20몸癩침돨뇰伎죄，君瞳펭홍죄.")		;Stay2995
	SetQuestNumStep(30,2995)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay2095
	SetQuestNumStep(30,2095)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,2095)
	if(yes==1){
	IsClassPC(3)
	if(yes==1){
	UpDualClassItem(1)
	D("앎뀌侶20몸癩침돨뇰伎죄，君瞳펭홍죄.")		;Stay2995
	SetQuestNumStep(30,2995)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay2195
	SetQuestNumStep(30,2195)
	goto End_QuestNpc00003 
}
}
 
CmpQuestNumStep(30,2195)
	if(yes==1){
	IsClassPC(4)
	if(yes==1){
	UpDualClassItem(1)
	D("앎뀌侶20몸癩침돨뇰伎죄，君瞳펭홍죄.")		;Stay2995
	SetQuestNumStep(30,2995)
	goto End_QuestNpc00003 
}
	else{
	D("헝된苟.")		;Stay0
	SetQuestNumStep(30,0)
	goto End_QuestNpc00003 
}
}
CmpQuestNumStep(30,2995)
	if(yes==1){
	D("봤죄，퀭돨廣覽綠쒔홍꼬�薨똴嫄句�乖杰矜狼돨땜鮫冷떼펭홍죄，疼숨.")		;End
	SetQuestNumStep(30,9999)
	goto End_QuestNpc00003 
}
 
;EQuest30_Npc00003
:End_QuestNpc00003        
end
@Npc00004
end
@Npc00005	; bank
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "돈은 많은가?" )
        }       
        if( ran == 1)
        {
	        D( "이 곳은 콜로서스 은행입니다.." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "이곳은 예금, 보관 업무를 하고 있습니다." ) 
        }
        CallSmallMenu( 0, 13 )

end
@Npc00006
	CmpQuestNumStep(49,1)
	if( yes == 0) ; 작다
	{
		D("겜블을 하려고 왔군.. 우선 겜블을 하기 위해서는 '겜블 스톤'을 가지고 있어야 하지.. 겜블 스톤은 길드전을 통해 구할 수가 있을 걸세..")
		SetQuestNumStep(49,1)
		goto END3_
	}
	if( yes == 1) ; 같다
	{
		D("겜블은 겜블창 안에 '겜블 스톤'을 올려 놓고 Gamble 버튼을 누르면 되네.. 아주 쉬울 거야.. 하지만 머리를 써야 좋은 아이템을 구할 수 있을거야...")
		SetQuestNumStep(49,2)
		goto END3_
	}
	if( yes == 2) ; 크다
	{
		D("오늘의 아이템은 고급 겜블 스톤 5개가 필요하네.. 겜블이란 100% 성공할 수가 없다는 것을 알아두게..")
		SetQuestNumStep(49,0)
		CallMenu(29)
		goto END3_
	}


:END3_
end
@Npc00007	
end
@Npc00008   
end
@Npc00009	
end

@Npc00010	; alchemist
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "이 포션 한번 먹어봐.. 온몸엔 힘이 불끈불끈, 두 눈엔 빛이 초롱초롱.." )
        }       
        if( ran == 1)
        {
	        D( "새 포션은 새 병에 담고, 새 음식은 목구멍으로 넘겨야 제맛이지." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "여기서 파는 빨간 포션을 먹으면 상처가 말끔히 사라진다네.. " ) 
        }
        CallSmallMenu( 0, 25 )
end
@Npc00011
end
@Npc00012	; bakery
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "경기에 참가해서는 항상 조심해야 되네.. 어디서 불새가 날아올지 모르거든..." ) 
        }       
        if( ran == 1) 
        {
	        D( "자네도 아레나에 참가하려고? 이럴 때일수록 뱃속이 든든해야지..." )
        }       
        if( ran == 2 ) 
        {
	        D( "내가 가르친 제자가 일스 요리대회에서 1등을 했다네. 움하하~ " )
        }
        CallSmallMenu( 0, 20 )
end
@Npc00013	
end
@Npc00014	; weapon shop
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "무기를 만드는 것은 참으로 위험한 일이야..." ) 
        }       
        if( ran == 1) 
        {
	        D( "뛰어난 대장장이는 연장 탓을 안하지. 전사도 마찬가지라네.." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "대장장이의 죽음으로 만들어진 무기에는 그 혼이 서려있죠... " ) 
        }
        CallSmallMenu( 0, 18 )
end
@Npc00015	; carpenter's shop
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "나무는 참으로 유용한 재료야.. 숲은 천연재료의 보고라고 할 수 있지." ) 
        }       
        if( ran == 1) 
        {
	        D( "여기서 만든 물건들은 모두 직접 손으로 만든 것들이지.." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "지팡이에도 마법검처럼 마법을 불어넣을 수 있지.." ) 
        }
        CallSmallMenu( 0, 26 )
end
@Npc00016	; bow shop
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "활은 재료에 따라 여러종류가 있다네..." ) 
        }       
        if( ran == 1) 
        {
	        D( "화살은 화살촉과 깃털이 매우 중요한 재료가 되지..." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "누군가 자네의 심장을 겨누어 쏜다고 생각해보게.. 끔찍하군.. " ) 
        }
        CallSmallMenu( 0, 27 )
end
@Npc00017
end
@Npc00018
end
@Npc00019	; astrologer
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "최근의 별들의 움직임을 살펴 보니, 새로운 영웅이 이쪽으로 오고 있는 거 같더군.." ) 
        }       
        if( ran == 1) 
        {
	        D( "자네도 영웅이 되고 싶어 찾아온 건가? 흐흐.. " ) 
        }       
        if( ran == 2 ) 
        {
	        D( "영웅은 타고나는 것이 아니라, 시대가 영웅을 만들어내는 것이지.. " ) 
        }
        CallSmallMenu( 0, 71 )
end

@Npc00020	
end
@Npc00021	
end
@Npc00022	
end
@Npc00023	
end
@Npc00024	; bow shop 2
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "저 쪽에서는 내 형제가 활을 팔고 있으니, 그쪽도 많이 이용해주게..." ) 
        }       
        if( ran == 1) 
        {
	        D( "엘프의 머리카락은 활줄을 만들기에 제격이지... " ) 
        }       
        if( ran == 2 ) 
        {
	        D( "당신도 아레나에 참가하고 싶은가요? 당신의 건투를 빕니다.." ) 
        }
        CallSmallMenu( 0, 27 )
end
@Npc00025	; Edelbroy's
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "바람속에 흩날리는 코스모스를.." ) 
        }       
        if( ran == 1) 
        {
	        D( "에델브로이는 헬카네스를 따르는 신이죠.." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "당신에게 에델브로이의 은총이 함께하기를 바랍니다.." ) 
        }
        CallSmallMenu( 0, 73 )

end
@Npc00026
end
@Npc00027	
end
@Npc00028	; bakery 2
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "아레나에 참가하려니 흥분되나요? 이럴때일수록 든든해야죠..." ) 
        }       
        if( ran == 1) 
        {
	        D( "제가 일스 요리대회에서 2위를 했답니다. 다음엔 꼭 1위를 해야하는데..." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "당신은 <은거한 영웅의 이야기>란 노래를 들어보셨나요? " ) 
        }
        CallSmallMenu( 0, 20 )
end
@Npc00029	; carpenter's shop
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "난 당신이 아레나에서 살아있는 전설이 되었으면 합니다..." ) 
        }       
        if( ran == 1) 
        {
	        D( "유피넬과 헬카네스는 시간을 만들어내고, 시간은 나의 주름살을 만들었지.." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "당신도 아레나에서 전설이 될 수 있습니다.." ) 
        }
        CallSmallMenu( 0, 26 )
end

@Npc00030	; weapon shop 2
        random( 0, 3 ) 
        if( ran == 0 ) 
        {
	        D( "검이란 무시무시한 예리함으로 피를 부르는 물건이라네.." ) 
        }       
        if( ran == 1) 
        {
	        D( "칼이란 끊임없이 갈고 닦아야 녹슬지 않는 법이죠..." ) 
        }       
        if( ran == 2 ) 
        {
	        D( "상대방의 정신까지도 베는 것이 진정한 고수의 실력이죠.." ) 
        }
        CallSmallMenu( 0, 18 )
end
@Npc00031
;SQuest71_Npc00031
CmpQuestNumStep( 71, 0 )
if( yes==1 ){
	MessageBox("래더점수가 5000이 넘는 사람들에게 <챔피온의 트로피>를 드립니다. 챔피온의 트로피는 은거한 영웅에 관한 이야기의 열쇠랍니다.")
	SetQuestNumStep( 71, 5 )
	goto End_QuestNpc00031 
}

CmpQuestNumStep( 71, 5 )
if( yes==1 ){
	CompLadderScore(5000)
	if(yes>=1){
	D("자네 레더 점수가 5000점 넘었군! 이것으로 챔피온의 트로피를 받을 자격이 있네. 챔피온의 트로피는 자네의 배낭에 내가 넣어줌세.")
	SetItemInvPC(0,  9048,  500)
	if(yes==1){
	EventMsg("당신의 배낭에 <챔피온의 트로피>가 추가되었습니다.")
	MessageBox("웨스트그레이드'327,14' 이 곳에 은거한 영웅이 자네를 도와줄 수 있을거야..")
	SetQuestNumStep( 71, 10 )
	goto End_QuestNpc00031 
}
	else{
	EventMsg("배낭이 가득 찼군. 트로피를 넣을 공간이 부족해..왠만하면 정리 좀 하지그래?")		;End
	SetQuestNumStep( 71, 5 )
	goto End_QuestNpc00031 
}
}
	else{
	D("Colossus의 영광은 5000점 이상인 자에게 주어는것이네. 점수를 더 올리고 오게.")		;End
	SetQuestNumStep( 71, 5 )
	goto End_QuestNpc00031 
}
}
CmpQuestNumStep( 71, 25 )
if( yes==1 ){
	MessageBox("황혼의 트로피는 래더점수가 7000이 넘는 사람들에게만 주어지는 것이랍니다. 황혼의 트로피는 황혼 펜던트에 '황혼의 숨결'을 부여할 수 있게 해 줍니다.")
	SetQuestNumStep( 71, 30 )
	goto End_QuestNpc00031 
}

CmpQuestNumStep( 71, 30 )
if( yes==1 ){
	CompLadderScore(7000)
	if(yes>=1){
	D("이 트로피를 받을 자격이 있는 사람은 이 대륙에서 몇안되는 것인데..굉장한 영광입니다. 이 트로피를 받으십시오. 당신은 충분히 이 영광을 누릴 자격이 있는 영웅입니다.")
	SetItemInvPC(0,  9049,  500)
	if(yes==1){
	EventMsg("당신의 배낭에 <황혼의 트로피>가 추가되었습니다.")
	MessageBox("당신의 배낭에 황혼의 트로피를 넣었으니 잘 간직하십시오.. 이제 헤게모니아 '54,444'에 있는 은거한 영웅을 만나보십시오..")
	SetQuestNumStep( 71, 35 )
	goto End_QuestNpc00031 
}
	else{
	EventMsg("배낭이 가득 차셨군요. 트로피를 넣을 공간이 부족합니다. 정리를 해주시길..")
	SetQuestNumStep( 71, 35 )
	goto End_QuestNpc00031 
}
}
	else{
	D("레더 점수가 아직 7000점이 되시지 못했군요. 영광을 위해서라도 싸우셔서 점수를 획득하시길 바랍니다.")		;Stay30
	SetQuestNumStep( 71, 30 )
	goto End_QuestNpc00031 
}
}

;EQuest71_Npc00031
:End_QuestNpc00031
end
@Npc00032	
;SQuest74_npc00032
CmpQuestNumStep(74,0)
if( yes==1 ){
        DualCheck(1)
        if(yes == 1){
        D("쯩�絿包菌�瘻,헝된덤∼")
        SetQuestNumStep(74,5)
        goto End_Questnpc00032 
}
        else
        {
        D("拳瘻斂???된섬꼇뭘,疼혼족족걸")
        SetQuestNumStep(74,15)
        goto End_Questnpc00032 
}
}
CmpQuestNumStep( 74, 5 )
if( yes==1 ){
        CallSmallMenu(200,  1190)
        SetQuestNumStep( 74, 10 )
        goto End_Questnpc00032 
}

CmpQuestNumStep(74,10)
if( yes==1 ){
        SendSound(0, 1311)
        Qcount = 0
        GhostLv = GhostLv + 1
        D("봤죄,퀭綠쒔랗瘻죄！")                ;Stay220
        SetQuestNumStep(74,15)
        goto End_Questnpc00032 
}

CmpQuestNumStep(74,15)
if( yes==1 ){
        DualCheck(2)
        if(yes == 1){
        D("侶척우앎뭘힛瘻죄?꼇狼賈痰렷랬넋埼킷!∼")
        SetQuestNumStep(74,20)
        goto End_Questnpc00032 
}
        else
        {
        D("된섬뻘꼇뭘,속答!!!∼")
        SetQuestNumStep(74,30)
        goto End_Questnpc00032 
}
}
CmpQuestNumStep( 74, 20 )
if( yes==1 ){
        CallSmallMenu(200,  1190)
        SetQuestNumStep( 74, 25 )
        goto End_Questnpc00032 
}
CmpQuestNumStep(74,25)
if( yes==1 ){
        SendSound(0, 1311)
        Qcount = 0
        GhostLv = GhostLv + 1
        D("힛瘻냥묘!묜毆!!!")                ;Stay220
        SetQuestNumStep(74,30)
        goto End_Questnpc00032 
}

CmpQuestNumStep(74,30)
if( yes==1 ){
        DualCheck(3)
        if(yes == 1){
        D("愷瘻죄,瞳侶쟁족돨稽우걸?")
        SetQuestNumStep(74,35)
        goto End_Questnpc00032 
}
        else
        {
        D("클제疼클제,愷瘻깻꼇켜!!!!!!")
        SetQuestNumStep(74,45)
        goto End_Questnpc00032 
}
}
CmpQuestNumStep( 74, 35 )
if( yes==1 ){
        CallSmallMenu(200,  1190)
        SetQuestNumStep( 74, 40 )
        goto End_Questnpc00032 
}
CmpQuestNumStep(74,40)
if( yes==1 ){
        SendSound(0, 1311)
        Qcount = 0
        GhostLv = GhostLv + 1
        D("愷瘻냥묘!퀭옵鹿蕨離멕냔뵀쏵엊죄!")                ;Stay220
        SetQuestNumStep(74,45)
        goto End_Questnpc00032 
}

CmpQuestNumStep(74,45)
if( yes==1 ){
        DualCheck(4)
        if(yes == 1){
        D("쯩�耉沽�鹿냥槨DragonSlayer∼")
        SetQuestNumStep(74,50)
        goto End_Questnpc00032 
}
        else
        {
        D("퀭뻘꼇뭘係숭냥槨DragonSlayer.......")
        SetQuestNumStep(74,0)
        goto End_Questnpc00032 
}
}


CmpQuestNumStep( 74, 50 )
if( yes==1 ){
        CallSmallMenu(200,  1190)
        SetQuestNumStep( 74, 55 )
        goto End_Questnpc00032 
}
CmpQuestNumStep(74,55)
if( yes==1 ){
        DualCheck(5)
        if(yes == 1){
        SendSound(0, 1311)
        Qcount = 0
        GhostLv = GhostLv + 1
        D("꼇列돛맡묜毆콱뻘角競콱導쳤！")                ;Stay220
        SetQuestNumStep(74,240)
        goto End_Questnpc00032 
}
        else
        {
        SetQuestNumStep(74,0)
        goto End_Questnpc00032 
}
}
CmpQuestNumStep(74,240)
if( yes==1 ){
        DualCheck(5)
        if(yes == 1){
        D("퀭綠쒔청唐瀏헹죄∼∼")
        goto End_Questnpc00032 
}
        else
        {
        SetQuestNumStep(74,0)
        goto End_Questnpc00032 
}
}
;EQuest74_npc00032
:End_Questnpc00032
end
@Npc00033	
	random(0,3)
	if( ran == 0 ) {
	D(" 언제까지 남들에게 신세지며 살아가려는가? 이거 한 장으로 뒤집어버리는거야! ")
}
	if( ran == 1 ) {
	D(" 자~ 대마법사 솔로처가 전해주는 마법의 숫자로 당신의 인생을 역전시켜보지 않겠나? ")
}
	if( ran == 2 ) {
	D(" 하루 종일 사냥하는 것보다 이 쪽의 벌이가 더 좋다는 것을 알고 있나? ")
}
 	CallSmallMenu(0,256)
end
@Npc00034	
end
@Npc00035	
end
@Npc00036	
end
@Npc00037	
end
@Npc00038   
end
@Npc00039	
end

@Npc00040
	FameCheck(999)
	if( yes == 1)
	{
		D("Fame이 1000 이상인 분들은 복구가 되지 않습니다.")
	}
	else
	{
		FameUp(1000)
		D("Fame이 복구돼서 1000이 올라가게 됩니다.")
	}
end

@Npc00041

end
@Npc00042	;;홈페이지 참가 부분 삭제
:END4201_ 	;;랜덤한 지역으로 이동
	random( 0, 2 ) 
        if( ran == 0 ) 
        {
		goto END4202_
	}       
        if( ran == 1)
        {
        	goto END4203_
        }
      
:END4202_ 	;;OX 퀴즈 1번 지역으로 이동

	MapMove( "EVENT2", 25, 17 )
	if( yes == 1 )
	{
		EventMsg(" OX 퀴즈 이벤트 지역으로 이동합니다.")
	}
	else
	{
		EventMsg(" OX 퀴즈 이벤트를 준비중입니다. ")
		goto END4299_
	}

:END4203_	;;OX 퀴즈 2번 지역으로 이동

	MapMove( "EVENT2", 29, 28 )
	if( yes == 1 )
	{
		EventMsg(" OX 퀴즈 이벤트 지역으로 이동합니다.")
	}
	else
	{
		EventMsg(" OX 퀴즈 이벤트를 준비중입니다. ")
		goto END4299_
	}

:END4299_

end
@Npc00043	
end
@Npc00044	
end
@Npc00045	
end
@Npc00046	
end
@Npc00047	
end
@Npc00048   
end
@Npc00049	
end

@Event00000

	

end
@Event00001		
; to ma-in
	sGetNat()
	if( yes == 3)
	{
		MapMove( "ma-in", 245, 115 )
		goto ENDEVENT1_		
	}
	
; to Renes_c
	sGetNat()
	if( yes == 4)
	{
		MapMove( "Renes_c", 210, 175 )
		goto ENDEVENT1_	
	}

; to barantan
	sGetNat()
	if( yes == 6)
	{
		MapMove( "barantan", 325, 98 )
		goto ENDEVENT1_
	}
; others
	else
	{
		EventMsg("당신 이곳에 어떻게 들어왔죠?")
		goto ENDEVENT1_
	}

:ENDEVENT1_
end
@Event00002		

end
@Event00003		


end
@Event00004		
end
@Event00005		
end
@Event00006		
end
@Event00007		
end
@Event00008		
end
@Event00009		
end

@Event00010		
end
@Event00011		
end
@Event00012		
end
@Event00013		
end
@Event00014	; to Fight map
	random(0,3)
	if(ran==0)
	{
		MapMove( "Fight", 6,72 )
	}
	if(ran==1)
	{
		MapMove( "Fight", 5,100 )
	}
	if(ran==2)
	{
		MapMove( "Fight", 33,100 )
	}

	if( yes == 1)	; Success to MapMove
	{
		EventMsg("<<코어 아레나>>로 이동합니다.")
		EventMsg("필요한 때를 위한 작은행운을~.")
	}
	else	; Failed to MapMove
	{
		EventMsg("맵 이동에 실패했습니다.")
	}
end
@Event00015	; to Dunmaze map
	random(0,3)
	if(ran==0)
	{
		MapMove( "Dunmaze", 3,85 )
	}
	if(ran==1)
	{
		MapMove( "Dunmaze", 2,87 )
	}
	if(ran==2)
	{
		MapMove( "Dunmaze", 4,86 )
	}

	if( yes == 1)	; Success to MapMove
	{
		EventMsg("<<캐슬 아레나>>로 이동합니다.")
		EventMsg("칼날 위에 실을 수 있는 가장 거대한 이름의 영광에 의지하여~")
	}
	else	; Failed to MapMove
	{
		EventMsg("맵 이동에 실패했습니다.")
	}
end
@Event00016	; to Stone map
	random(0,3)
	if(ran==0)
	{
		MapMove( "Stone", 152,22 )
	}
	if(ran==1)
	{
		MapMove( "Stone", 150,20 )
	}
	if(ran==2)
	{
		MapMove( "Stone", 148,18 )
	}

	if( yes == 1)	; Success to MapMove
	{
		EventMsg("<<스톤 아레나>>로 이동합니다.")
		EventMsg("필요한 때를 위한 작은행운을~.")
	}
	else	; Failed to MapMove
	{
		EventMsg("맵 이동에 실패했습니다.")
	}
	
end
@Event00017	
;; 블루아레나
	MapMove( "GM_event", 148,202 )
	if( yes == 1 )
	{
		EventMsg("<블루아레나>로 이동합니다.")
	}
	else
	{
		EventMsg("맵 이동에 실패했습니다.")
	}
end
@Event00018	; to Castle2 map
	IsLevel(61)		;물던전 50레벨 제한
	if( yes == 0)
	{
		random(0,3)
		if(ran==0)
		{
			MapMove( "castle2", 3,85 )
		}
		if(ran==1)
		{
			MapMove( "castle2", 2,87 )
		}
		if(ran==2)
		{
			MapMove( "castle2", 4,86 )
		}
		if( yes == 1)	; Success to MapMove
		{
			EventMsg("<<캐슬 아레나2>>로 이동합니다.")
			EventMsg("이곳은 레벨10부터 레벨60까지만 이용할 수 있는 아레나입니다.")
			goto Event00018
		}
		else	; Failed to MapMove
		{
			EventMsg("맵 이동에 실패했습니다.")
			goto Event00018
		}	
	}
	else
	{
		EventMsg("레벨 60까지만 출입할 수가 있습니다.")
	}
:Event00018
end
@Event00019
end

@Event00020
end
@Event00021
end
@Event00022
end
@Event00023
end
@Event00024
end
@Event00025
end
@Event00026
end
@Event00027
end
@Event00028
end
@Event00029
end

@Event00030
end
@Event00031
end
@Event00032
end
@Event00033
end
@Event00034
end
@Event00035
end
@Event00036
end
@Event00037
end
@Event00038
end
@Event00039
end

@Event00040
end
@Event00041
;; 몬스터 아레나
	MapMove("mon_arena",405,407)
	if( yes == 1 )
	{
		EventMsg("<몬스터 아레나>로 이동합니다.")
	}
	else
	{
		EventMsg("맵 이동에 실패했습니다.")
	}
end
@Event00042
end
@Event00043
end
@Event00044
end
@Event00045
end






