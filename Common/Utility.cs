using System;
using System.Configuration;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Collections.Generic;
using System.Web;

namespace Common
{
	/// <summary>
	/// 
	/// </summary>
	public sealed class Utility
	{
        
        //深拷贝       
        public static T Clone<T>( object obj)
        {
            //创建内存流     
            MemoryStream ms = new MemoryStream();
            //以二进制格式进行序列化          
            BinaryFormatter bf = new BinaryFormatter();
            bf.Serialize(ms, obj);
            //反序列化当前实例到一个object    
            ms.Seek(0, 0);
            T t = (T)bf.Deserialize(ms);
            //关闭内存流            
            ms.Close();
            return t;
        }

        public static string UploadFile(string clientFilePath,string newFilePath)
        {
            string str = "true";
            try
            {
                //得到頁面選擇的完整的路徑            
                using (FileStream upOldFile = File.OpenRead(clientFilePath))
                {
                    ////根據這個路徑打開這個文檔            
                    ////給文件設置一個時間名稱            
                    //string modifyFileName = DateTime.Now.ToString("yyMMddmmss");
                    //string fileType = clientFilePath.Substring(clientFilePath.LastIndexOf(".") + 1);
                    ////截取字符串得到該文件是什麽類型的           
                    //modifyFileName = modifyFileName + "." + fileType;
                    ////截取字符串得到上傳的文件的名稱然後在這個基礎上給加上剛才的時間名稱                        
                    //string newFileName = request.ApplicationPath + ConfigurationManager.AppSettings["FileUpLoadPath"] + modifyFileName;
                    //組合上傳文件路徑和名稱          

                    using (BinaryWriter upNewFile = new BinaryWriter(File.Open(newFilePath, FileMode.Create)))
                    {
                        //創建一個該類型的文件的空文件            
                        int bytesRead = 0;
                        byte[] buffer = new byte[8192];
                        //設置每次讀的字節            
                        while ((bytesRead = upOldFile.Read(buffer, 0, buffer.Length)) > 0)
                        //循環讀文件            
                        {
                            upNewFile.Write(buffer, 0, bytesRead);
                            //循環寫文件           
                        }
                        upNewFile.Close();
                        //關閉寫入流          
                        upOldFile.Close();
                    }
                }
            }
            catch(Exception ex)
            {
                Log.LogInfo(ex.Message);
                //Common.Utility.UploadFile
                str = "false";
            }
            return str;
        }

        public static string UploadFile(Stream sr, string newFilePath)
        {
            string str = "true";
            try
            {
                using (BinaryWriter upNewFile = new BinaryWriter(File.Open(newFilePath, FileMode.Create)))
                {
                    //創建一個該類型的文件的空文件            
                    int bytesRead = 0;
                    byte[] buffer = new byte[8192];
                    //設置每次讀的字節            
                    while ((bytesRead = sr.Read(buffer, 0, buffer.Length)) > 0)
                    //循環讀文件            
                    {
                        upNewFile.Write(buffer, 0, bytesRead);
                        //循環寫文件           
                    }
                    upNewFile.Close();
                }
            }
            catch (Exception ex)
            {
                Log.LogInfo(ex.Message);
                str = "false";
            }
            return str;
        }
	}
}
