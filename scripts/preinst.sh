#!/bin/bash
if lsattr -d /opt/zimbra/jetty_base/webapps/ | grep -q 'i'; then
        echo "**** remove restrict write access for /opt/zimbra/jetty_base/webapps/ (zimbra-mbox-store-libs)****"
        chattr -i -R /opt/zimbra/jetty_base/webapps/
fi
