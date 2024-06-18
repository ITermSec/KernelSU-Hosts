PATH=/system/etc
	ui_print "- Author : ITermSec"
	ui_print "- Version : 6.6.6"
	ui_print "- Description : An efficient ad blocker with no user interface, or without installing third party apps."
	ui_print "- Patching 'hosts' file : $PATH/hosts"
mkdir -p $MODPATH$PATH
mv -f $MODPATH/hosts $MODPATH$PATH
chcon -r u:object_r:system_file:s0 "$MODPATH/system"
chmod 644 "$MODPATH/system/etc/hosts"
chmod 644 "$MODPATH$PATH/hosts"
chmod 644 "$PATH/hosts"
mkdir "$MODPATH/worker"
touch "$MODPATH/skip_mount"
# Clean up
rm -rf $MODPATH/hosts
