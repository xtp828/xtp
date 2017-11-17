<?php
namespace app\admin\controller;
use think\Controller;
use think\File;
use think\Request;
use com\Dir;

class Upload extends Common
{
	//图片上传
  public function upload(){
    $file = request()->file(input('file'));
    $info = $file->move(ROOT_PATH.'uploads/image/');
    if($info){
      $fileinfo = $info->getInfo();
      $res['name'] = mb_substr($fileinfo['name'], 0,  -4, "UTF-8"); 
      $res['status'] = 1;
      $res['image_name'] = str_replace("\\", "/", $info->getSaveName());
    }else{
      $res['status'] = 0;
      $res['error_info'] = $file->getError();
    }
    return json_encode($res);
  }
    
  //文件上传
  public function uploadfile(){
    $file = request()->file(input('file'));
    $info = $file->move(ROOT_PATH.'uploads/file/');
    if($info){
      $res['status'] = 1;
      $res['file_name'] = $info->getFilename();
      $res['file_path'] = str_replace("\\", "/", $info->getSaveName());
            
    }else{
      $res['status'] = 0;
      $res['error_info'] = $file->getError();
    }
    return json_encode($res);
  }

  //文件/夹管理
  public function browsefile($spath = '', $stype = 'picture') {
    $spath = input('spath');
    $stype = input('stype');
    $docname = input('docname');

    $base_path = '/uploads/img';
    $enocdeflag = input('encodeflag', 0, 'intval');
    switch ($stype) {
      case 'picture':
        $base_path = '/uploads/image';
        break;
      case 'file':
        $base_path = '/uploads/file';
        break;      
      default:
        exit('参数错误');
        break;
    }
    if ($enocdeflag) {
      $spath = base64_decode($spath);
    }
    $spath = str_replace('.', '', ltrim($spath,$base_path));
    $path = $base_path . '/'. $spath;

    $dirlist = new Dir('.'.$path);//加上.      '.'.$path

    $list = $dirlist->toArray();

    for ($i=0; $i < count($list); $i++) { 
      $list[$i]['isImg'] = 0;
      if ($list[$i]['isFile']) {
        $url = rtrim($path,'/') . '/'. $list[$i]['filename'];
        $ext = explode('.', $list[$i]['filename']);
            $ext = end($ext);
        if (in_array($ext, array('jpg','png','gif'))) {
          $list[$i]['isImg'] = 1;
        }
      }else {
        $url = url('upload/browsefile', array('docname' => $docname,'stype' => $stype, 'encodeflag' => 1 ,'spath'=>base64_encode(rtrim($path,'/') . '/'. $list[$i]['filename'])));
      } 
      $list[$i]['url'] = $url;      
      $list[$i]['size'] = get_byte($list[$i]['size']);
    }
    //p($list);
    $parentpath = substr($path, 0, strrpos($path, '/'));

    $this->assign([
      'purl'=>  url('upload/browsefile', array('spath'=> base64_encode($parentpath),'encodeflag' => 1, 'stype' => $stype)),
      'infolist'=> $list,
      'docname'=> $docname,
      'stype'=> $stype
    ]);
    return $this->fetch();
  }
}