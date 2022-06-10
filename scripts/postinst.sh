if [ -f /opt/zimbra/bin/zmlocalconfig ]; then
   cp -af /opt/zimbra/lib/patches/localconfig/zmlocalconfig /opt/zimbra/bin/zmlocalconfig
   chmod 755 /opt/zimbra/bin/zmlocalconfig
fi
