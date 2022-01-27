<?php

namespace App\Helpers;


class ImageHelper
{
    public static function handleUploadedImage($file,$path) {
        if ($file) {
            $name = time().$file->getClientOriginalName();
            $file->move($path,$name);
            return $name;
        }
    }

    public static function handleUpdatedUploadedImage($file,$path,$data,$delete_path,$field) {
        $name = time().$file->getClientOriginalName();
   
        $file->move(base_path('..').$path,$name);
        if($data[$field] != null){
            if (file_exists(base_path('../').$delete_path.$data[$field])) {
                unlink(base_path('../').$delete_path.$data[$field]);
            }
        }
        return $name;
    }

    public static function handleDeletedImage($data,$field,$delete_path) {
        
        
        if($data[$field] != null){
            if (file_exists(base_path('../').$delete_path.$data[$field])) {
                unlink(base_path('../').$delete_path.$data[$field]);
            }
        }
    }
}
