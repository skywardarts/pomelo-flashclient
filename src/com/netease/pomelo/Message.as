package com.netease.pomelo 
{
  public class Message 
  {
    public var id:int;
    public var route:String;
    public var body:String;

    public function Message(id:int, route:String, body:String):void {
      this.id = id;
      this.route = route;
      this.body = body;
    }
  }
}