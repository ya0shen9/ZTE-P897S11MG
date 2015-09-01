apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
        echo ">>> in custom_app for $apkBaseName to disadble select runtime"
	sed -i 's#android:title="@string/select_runtime_title" android:key="select_runtime"#android:title="@string/select_runtime_title" android:selectable="false" android:key="select_runtime"#g' $tempSmaliDir/res/xml/development_prefs.xml

#elif [ "$apkBaseName" = "Settings" ];then
#	echo ">>> in custom_app $apkBaseName"
#	echo ">>> add stock settings"
#	sed -i '/manufacturer_settings/d' $tempSmaliDir/res/xml/settings_headers.xml
#	sed -i '/com.android.settings.users.UserSettings/r Settings/settings_headers.xml.part' $tempSmaliDir/res/xml/settings_headers.xml
fi

