for x in range(1, 2):
    #Abro el archivo x-esimo
    print("Archivo numero "+ str(x))
    archivo = open("summary.txt")
    #Leo la linea
    line = archivo.readline()
    temp = []
    while line:
        _list = line.split("\t")
        if _list:
            palabra = _list[0]
            if palabra[7].isdigit() == True:
                temp.append([palabra[6:8], _list[5]])
            else:
                temp.append([palabra[6], _list[5]])
            line = archivo.readline()
    archivo.close()
    temp = temp[1:]
    temp.sort(key=lambda temp: temp[-1])
    for imagen in temp:
        print("Imagen "+imagen[0])
        print("D: "+imagen[1])
        print("\n")
