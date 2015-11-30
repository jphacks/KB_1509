#!/usr/bin/python
import zbar

from PIL import Image
import time
import picamera
def getbarcode():
    with picamera.PiCamera() as camera:
        camera.resolution = (1024, 768)
        camera.start_preview()
        time.sleep(2)
        camera.capture('barcode.jpg')
    # create a reader
    scanner = zbar.ImageScanner()
    # configure the reader
    scanner.parse_config('enable')
    # obtain image data
    pil = Image.open('bar.jpeg').convert('L')
    width, height = pil.size[0], pil.size[1]
    raw = pil.tostring()
    # wrap image data
    image = zbar.Image(width, height, 'Y800', raw)
    # scan the image for barcodes
    scanner.scan(image)
    # clean up
    return symbol.data

codenum = getbarcode()
print '"%s"' % codenum
