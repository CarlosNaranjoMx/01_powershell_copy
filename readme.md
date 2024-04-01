# 01_powershell_copy
Auto Back-up your android files in your PC

1. activar el modo desarrollador en tu telefono
2. Poner tu telefono en modo depuración
3. Instalar `adb` en tu computadora

agregar los directorios que deseas respaldar de tu telefono a tu computadora
en el archivo `01_ps_copy_phone.ps1`

```ps
$dirs_phone = @(
      "/storage/emulated/0/Download",
      "/storage/emulated/0/Download/InsMate",
      "/storage/emulated/0/Download/MEGA Downloads",
      # "/storage/emulated/0/Movies",
      "/storage/emulated/0/DCIM/Screenshots",
      "/storage/emulated/0/DCIM/Restored",
      "/storage/emulated/0/DCIM/Camera",
      "/storage/emulated/0/DCIM/100PINT/Pines",
      "/storage/emulated/0/Android/media/com.whatsapp/Whatsapp/Media/WhatsApp Images",
      "/storage/emulated/0/Android/media/com.whatsapp/Whatsapp/Media/WhatsApp Animated Gifs",
      "/storage/emulated/0/Android/media/com.whatsapp/Whatsapp/Media/WhatsApp Video",
      "/storage/emulated/0/Pictures/WhatsApp",
      "/storage/emulated/0/Pictures/Twitter",
      "/storage/emulated/0/Resources/Resources_links"
    )
```