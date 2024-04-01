#!/bin/bash
if [ -f /opt/zimbra/bin/zmlocalconfig ]; then
   cp -af /opt/zimbra/lib/patches/localconfig/zmlocalconfig /opt/zimbra/bin/zmlocalconfig
   chmod 755 /opt/zimbra/bin/zmlocalconfig
fi
echo "**** apply restrict write access for /opt/zimbra/jetty_base/webapps/ (zimbra-mbox-store-libs)****"
chattr +i -R /opt/zimbra/jetty_base/webapps/
