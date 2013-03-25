<%@ WebHandler Language="C#" Class="AjaxHandler" %>

using System;
using System.Web;

public class AjaxHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";		
		string op = context.Request["op"];
		string returnStr = string.Empty;
		try
		{
			switch (op)
			{
				case "checkDelete":
					returnStr = CheckDelete(context.Request["CkCode"]).ToString().ToLower();
					break;
				default:
					break;
			}
		}
		catch (Exception ex)
		{
			returnStr = ex.Message;
		}
		

		context.Response.Write(returnStr);
		
    }
	/// <summary>
	/// 校验这个窗口是否有差评
	/// </summary>
	/// <param name="ckCode">窗口编号</param>
	/// <returns>有 false 没有 true</returns>
	private bool CheckDelete(string ckCode)
	{
		return true;
	}
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}