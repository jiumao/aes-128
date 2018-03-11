Header (
	company("EMA Design Automation") 
	product("TimingDesigner") 
	rev("9.2") 
	file("c:/users/brize/desktop/aes/aes-128 ip/aes-128.td") 
	date("02/21/2018") time(" 0:03") 
	format("9.0") 
	baseScale(1000.000000) 
	zoomFactor("0.00126916") 
	zoomBegin(0) 
	zoomEnd(220803) 
	nameFrameWidth(158) 
	simHDL(Verilog) 
	simDelayMechanism(Transport) 
	nextID(15) 
	TimingAnalysisMethod(51) 
	SDCVersion(0) 
	
	generalPrintParams( "printer,,,portrait,tif,Letter,default,200,200,mm,color,scaleable,")
	diagramPrintParams( "0,12,0,206000,true,true,1,1,true,false,false,false,all,specified")
	spreadsheetPrintParams( "0,2147483647,true,false,1,true,all")
	)
tclPreferences (UseAboveSixtyFiveNm UseAlteraFastTimingModel 
	UseActelMaxTimingModel UseTimingPath UseArrivalTime )
HDLHeader( 
	hdlFile("") 
	checkConstraints(true) 
	comment("") 
	checkTimeout(never) 
	
	command( name("aes-128") cmdType(null) ))
DefaultLabel(
	delay(showNameString,"") 
	constraint(showNameString,"") 
	guarantee(showNameString,"") 
	measure(showMeasure,"") 
	store(showNameString,"") 
	wait(showNameString,"") 
	end(showNameString,"") 
	boundary(showIncrement,"") 
	loop(showNameString,"") 
	waveform(showSkip,"","") 
	specifiedclock(showSkip,"","") 
	derivedclock(showSkip,"","") 
	simwaveform(showSkip,"","") 
	bus(showValue,"","H") 
	)
DiagramStyle (
	waveformFont(winFont("Arial",90) qtFont("Arial",9) ) 
	rulerFont(winFont("Arial",90) qtFont("Arial",9) ) 
	relationshipFont(winFont("Arial",90) qtFont("Arial",9) ) 
	labelFont(winFont("Arial",90) qtFont("Arial",9) ) 
	annotationFont(winFont("Arial",80) qtFont("Arial",8) ) 
	slotHeight("11") 
	edgeHeight("11") 
	edgeGrade("1.96261") 
	inputPenStyle(0) 
	outputPenStyle(0) 
	inoutPenStyle(0) 
	internalPenStyle(0) 
	vRelationshipPenStyle(0) 
	hRelationshipPenStyle(0) 
	inputPenColor(3) 
	outputPenColor(3) 
	inoutPenColor(3) 
	internalPenColor(3) 
	wavePenWidth("0") 
	relationshipPenWidth("0") 
	wavesOnTop 
	relationshipsOnTop 
	annotationsOnTop 
	showSlopedEdges 
	edgeDisplayType(Uncertainty) 
	)
Clock ( objectID(2) name("clk1") minheight("0") periodScale(1000.000) period(10.000000) dutyCycle(50.000000) 
	hdl( direction(internal) ) square label(showDefault,"","H") )
Bus ( objectID(11) name("conf") minheight("0") edges(
	(valid,0.000,0.000,L), 
	(z,9000.000,9000.000), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(12) name("key") minheight("0") edges(
	(valid,0.000,0.000,L), 
	(valid,13000.000,13000.000), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(13) name("in") minheight("0") edges(
	(valid,0.000,0.000,L), 
	(z,17000.000,17000.000), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(14) name("start") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,24000.000,24000.000), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(3) name("start_pos") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,40000.000,40000.000,L), 
	(low,50000.000,50000.000,L), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(4) name("round_cnt") minheight("0") edges(
	(valid,0.000,0.000,L,label(showValue,"0","0") ), 
	(valid,50000.000,50000.000,L,label(showValue,"1","1") ), 
	(valid,60000.000,60000.000,L,label(showValue,"","2") ), 
	(valid,70000.000,70000.000,L,label(showDefault,"","3") ), 
	(valid,80000.000,80000.000,L,label(showDefault,"","4") ), 
	(valid,90000.000,90000.000,L,label(showDefault,"","5") ), 
	(valid,100000.000,100000.000,L,label(showDefault,"","6") ), 
	(valid,110000.000,110000.000,L,label(showDefault,"","7") ), 
	(valid,120000.000,120000.000,L,label(showDefault,"","8") ), 
	(valid,130000.000,130000.000,L,label(showDefault,"","9") ), 
	(valid,140000.000,140000.000,L,label(showDefault,"","10") ), 
	(valid,150000.000,150000.000,L,label(showDefault,"","11") ), 
	(valid,160000.000,160000.000,L,label(showDefault,"","0") ), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(5) name("key_update") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,40000.000,40000.000,L), 
	(low,160000.000,160000.000,L), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(6) name("roundkey") minheight("0") edges(
	(invalid,0.000,0.000,L), 
	(valid,50000.000,50000.000,L,label(showText,"key","") ), 
	(valid,60000.000,60000.000,L,label(showText,"K1","") ), 
	(valid,70000.000,70000.000,L,label(showText,"K2","") ), 
	(valid,80000.000,80000.000,L,label(showText,"K3","") ), 
	(valid,90000.000,90000.000,L,label(showText,"K4","") ), 
	(valid,100000.000,100000.000,L,label(showText,"K5","") ), 
	(valid,110000.000,110000.000,L,label(showText,"K6","") ), 
	(valid,120000.000,120000.000,L,label(showText,"K7","") ), 
	(valid,130000.000,130000.000,L,label(showText,"K8","") ), 
	(valid,140000.000,140000.000,L,label(showDefault,"","K9") ), 
	(valid,150000.000,150000.000,L,label(showDefault,"","K10") ), 
	(invalid,160000.000,160000.000,L), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(7) name("start_pos_1d") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,50000.000,50000.000,L), 
	(low,60000.000,60000.000,L), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(8) name("state_update") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,50000.000,50000.000,L), 
	(low,160000.000,160000.000,L), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Bus ( objectID(9) name("state") minheight("0") edges(
	(invalid,0.000,0.000,L), 
	(valid,60000.000,60000.000,L,label(showText,"S0","") ), 
	(valid,70000.000,70000.000,L,label(showText,"S1","") ), 
	(valid,80000.000,80000.000,L,label(showText,"S2","") ), 
	(valid,90000.000,90000.000,L,label(showText,"S3","") ), 
	(valid,100000.000,100000.000,L,label(showText,"S4","") ), 
	(valid,110000.000,110000.000,L,label(showText,"S5","") ), 
	(valid,120000.000,120000.000,L,label(showText,"S6","") ), 
	(valid,130000.000,130000.000,L,label(showText,"S7","") ), 
	(valid,140000.000,140000.000,L,label(showDefault,"","S8") ), 
	(valid,150000.000,150000.000,L,label(showDefault,"","S9") ), 
	(valid,160000.000,160000.000,L,label(showText,"S10","") ), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Waveform ( objectID(10) name("valid") minheight("0") edges(
	(low,0.000,0.000,L), 
	(high,160000.000,160000.000,L), 
	(blank,206000.000,206000.000,T)) 
	hdl( direction(internal) ) label(showDefault,"","H") )
Grid ( "clk1" topWave("clk1") 
	 color(6) 1stWidth(0) 2ndWidth(0) 1stStyle(1) 2ndStyle(0) 
  show1st show2nd )
EndCycleEvent ( objectID(1) name("end") time(206.000000) showVert hideOnPrinter label(showDefault,"") fromLatestEnd toEarliestBegin  )
