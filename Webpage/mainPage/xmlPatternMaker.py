import os
import sys

while True:
    nameInput = raw_input("Name: ")
    fileInput = raw_input("File Location (do not add .jpg), ../../EmbroideryPatterns/")
    catogoryInput = raw_input("Category: ")
    sizeInput = raw_input("Size: ")
    stitchInput = raw_input("Number of stitches: ")
    colorInput = raw_input("Number of colors: ")

    xmlFile = open('inventoryCopy.xml', mode='a+')
    xmlFile.writelines("""
        <pattern>
            <name>{}</name>
            <image>../../EmbroideryPatternScans/{}.jpg)</image>
            <category>{}</category>
            <size>{}</size>
            <stitches>{}</stitches>
            <colors>{}</colors>
        </pattern>""".format(nameInput,fileInput,catogoryInput,sizeInput,stitchInput,colorInput))
    xmlFile.close()
