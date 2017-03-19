import subprocess
import logging
import sys

svc = str(sys.argv[1])

logging.basicConfig(filename='svc_scp.log',
                    format= '%(asctime)s - %(levelname)s: - %(message)s',
                    level=logging.DEBUG)
logging.info('checking if process '+ svc + " is runnning")

service_is_running = subprocess.call(["ps", "-C", svc])

if service_is_running==1:
    logging.warning('Process '+svc+" is not running")
    logging.info('Trying to restart the process ' + svc)
    restart_sts = subprocess.call(["sudo","/etc/init.d/%s" % svc, "start"])
    if restart_sts == 1:
        logging.error("unable to restart %s" % svc)
    else:
        logging.info("%s is up and running" % svc)
else:
    logging.info("%s is already running" % svc)




















