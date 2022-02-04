# nextcloud
docker image nextcloud with video preview

Then I added
```code
'enable_previews' => true,
'enabledPreviewProviders' =>
 array (
    0 => 'OC\\Preview\\TXT',
    1 => 'OC\\Preview\\MarkDown',
    2 => 'OC\\Preview\\OpenDocument',
    3 => 'OC\\Preview\\PDF',
    4 => 'OC\\Preview\\MSOffice2003',
    5 => 'OC\\Preview\\MSOfficeDoc',
    6 => 'OC\\Preview\\PDF',
    7 => 'OC\\Preview\\Image',
    8 => 'OC\\Preview\\Photoshop',
    9 => 'OC\\Preview\\TIFF',
   10 => 'OC\\Preview\\SVG',
   11 => 'OC\\Preview\\Font',
   12 => 'OC\\Preview\\MP3',
   13 => 'OC\\Preview\\Movie',
   14 => 'OC\\Preview\\MKV',
   15 => 'OC\\Preview\\MP4',
   16 => 'OC\\Preview\\AVI',
 ),
```
at the end of my config.php.

But I still cannot see video preview.

build preview
docker exec --user www-data -it nextcloud_app_1 /bin/bash
php ./occ preview:generate-all -vvv
