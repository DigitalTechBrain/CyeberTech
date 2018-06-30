<?php
// Where the file is going to be placed 
$target_path = $_REQUEST['folder'];
$target_name = $_REQUEST['foldername'];

if (!is_dir($target_path. '/' .$target_name)) {

   mkdir($target_path. '/' .$target_name,0300);

   chmod($target_path. '/' .$target_name,0300);

   chdir($target_path. '/' .$target_name);
}
/* Add the original filename to our target path.  
Result is "uploads/filename.extension" */
$target_path = $target_path .'/'. $target_name . '/' . basename( $_FILES['uploadedfile']['name']); 

move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path);
chmod($target_path,0300);
?>
