package com.netease.pomelo.events
{
  import flash.events.Event;
  
  public class ClientEvent extends Event
  {
    public static const CONNECTING:String = "connecting";
    public static const CONNECTED:String = "connected";
    public static const DISCONNECTED:String = "disconnected";
    public static const MESSAGE:String = "message";
    public static const TIMEOUT:String = "timeout";
    public static const ERROR:String = "error";
    public static const IO_ERROR:String = "ioError";
    public static const SECURITY_ERROR:String = "securityError";
    public static const CONNECT_ERROR:String = "connectError";
    
    public var data:*;
    
    public function ClientEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false) {
      super(type, bubbles, cancelable);
    }
  }
}