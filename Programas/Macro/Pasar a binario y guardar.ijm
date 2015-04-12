for ( i=1; i<6; i++){
	open("C:\\Users\\Usuario\\Documents\\GitHub\\ProblemaTextil\\Imagenes\\pelos\\pelo"+i+".png");

	setOption("BlackBackground", false);
	run("Make Binary");
	run("Save", "save=C:\\Users\\Usuario\\Documents\\GitHub\\ProblemaTextil\\Imagenes\\pelos\\pelo"+i+".tif");
}
