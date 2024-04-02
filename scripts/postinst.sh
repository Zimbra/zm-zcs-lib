#!/bin/bash
if [ -f /opt/zimbra/bin/zmlocalconfig ]; then
   cp -af /opt/zimbra/lib/patches/localconfig/zmlocalconfig /opt/zimbra/bin/zmlocalconfig
   chmod 755 /opt/zimbra/bin/zmlocalconfig
fi
if [ -d "/opt/zimbra/jetty_base/webapps" ]; then
	if lsattr -d /opt/zimbra/jetty_base/webapps/| grep -qE '\b[i]\b'; then
		echo "Immutable attribute already set on the /opt/zimbra/jetty_base/webapps/ (zimbra-mbox-store-libs)"
		lsattr -d /opt/zimbra/jetty_base/webapps/
	else
		echo "**** apply restrict write access for /opt/zimbra/jetty_base/webapps/ (zimbra-mbox-store-libs) ****"
		lsattr -d /opt/zimbra/jetty_base/webapps/
		chattr +i -R /opt/zimbra/jetty_base/webapps/
	fi
fi
