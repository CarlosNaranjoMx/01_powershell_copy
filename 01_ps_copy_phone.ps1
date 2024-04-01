function copy_phone {

    chcp 65001
  
    $respaldo_dir = "$HOME/"
  
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
  
    foreach ($directorio in $dirs_phone) {
      # Utilizar Split-Path para obtener el último nombre
      $ultimoNombre = (Split-Path $directorio -Leaf)
      
      # Imprimir el último nombre
      $new_dir = "$respaldo_dir$ultimoNombre"
  
      if (-not (Test-Path $new_dir)) {
          # Crear el directorio
          New-Item -ItemType Directory -Path $new_dir -Force
      }
  
      $archivosDispositivo = adb shell ls $directorio
      # echo "------------------------------------------"
      # echo $archivosDispositivo
      foreach ($archivo in $archivosDispositivo.Split([Environment]::NewLine, [StringSplitOptions]::RemoveEmptyEntries)) {
        $archivosArray = $archivo -split '\s+'
        foreach ($archivo in $archivosArray) {
            echo $archivo
            $archivo = $archivo -replace '\\', ' '
            try{
              adb pull "$directorio/$archivo" $new_dir
              adb shell rm "$directorio/$archivo"
            } catch {
  
            }
        }
  
      }
  
    }
  
  
  
  }