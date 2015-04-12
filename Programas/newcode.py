for x in range(1, 2):
    #Abro el archivo x-esimo
    print("Archivo numero "+ str(x))
    archivo = open("summary" + str(x) + ".txt")
    #Leo la linea
    line = archivo.readline()
    while line:
        _list = line.split("\t")
        if not _list:
            print("\n")
        else:
            print(_list[5])
            line = archivo.readline()
