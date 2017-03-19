import zipfile
import sys
import os
import logging

logging.basicConfig(filename='file_ex.log', level=logging.DEBUG)

logging.info("Checking to see if the backup.zip file exists")

if os.path.exists("backup.zip"):
    logging.info("backup.zip exists")
    try:
        zip_file = zipfile.ZipFile('backup.zip', 'a')
    except:
        err = sys.exc_info()
        logging.error("unable to open backup.zip in append mode")
        logging.error("Error Num: " + str(err[1].args[0]))
        logging.error("Error Msg: "  + err[1].args[1])
        sys.exit()
else:
    logging.info("The file backup.zip does not exist")
    try:
        zip_file = zipfile.ZipFile('backup.zip','w')
    except:
        err = sys.exc_info()
        logging.error("unable to create backup.zip")
        logging.error("Error Num: " + str(err[1].args[0]))
        logging.error("Error Msg: "  + err[1].args[1])
        sys.exit()

logging.info("Adding some text to backup.zip")

try:
    zip_file.write('ex1.sh','test.txt', zipfile.ZIP_DEFLATED)
except:
    err = sys.exc_info()
    logging.error("Cannot write to backup.zip")
    logging.error("Error Num: " + str(err[1].args[0]))
    logging.error("Error Msg: "  + err[1].args[1])
    
zip_file.close()


