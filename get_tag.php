<?php
date_default_timezone_set("America/New_York");
class Tag
{
  public $year;
  public $month;
  public $day;
  public $ver;
  public function __construct($tag_data)
  {
    $explode=explode(".",$tag_data);
    if(count($explode)==3)
    {
      $explode[]="0";
    }
    foreach($explode as &$val)
    {
      $val=intval($val);
    }
    list($this->year,$this->month,$this->day,$this->ver)=$explode;
  }
  public function is_same_day()
  {
    return date("Y.n.j")=="$this->year.$this->month.$this->day";
  }
  public function __toString()
  {
    $this->month=str_pad($this->month,2,0,STR_PAD_LEFT);
    $this->day=str_pad($this->day,2,0,STR_PAD_LEFT);
    return "$this->year.$this->month.$this->day.$this->ver";
  }
}
exec("git describe --tags",$out);
$tag=new Tag(explode("-",$out[0])[0]);
if($tag->is_same_day())
{
  $tag->ver++;
  echo $tag;
}
else
{
  echo date("Y.m.d");
}
