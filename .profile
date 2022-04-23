if [[ `hostnamectl --static` == "xps" ]]; then
	export GDK_SCALE=2
	export GDK_DPI_SCALE=0.5
fi

export QT_QPA_PLATFORMTHEME=qt5ct
