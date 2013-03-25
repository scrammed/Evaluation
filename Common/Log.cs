using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Configuration;

namespace Common
{
    public class Log
    {
        public static string strLogFilePath = string.Empty;
        private static StreamWriter sw;
        private static bool IsInit = false;
        public Log()
        {

        }
        /// <summary>
        /// Setting LogFile path. If the logfile path is 
        /// null then it will update error info into LogFile.txt under
        /// application directory.
        /// </summary>
        public string LogFilePath
        {
            set
            {
                strLogFilePath = value;
            }
            get
            {
                return strLogFilePath;
            }
        }
        public static void InitLog()
        {
            if (sw == null)
            {               
                strLogFilePath = GetLogFilePath();
                sw = File.AppendText(strLogFilePath);
            }
            IsInit = true;
        }

        public static void LogInfo(string content) 
        {
            if (!IsInit)
            {
                InitLog();
            }
            sw.WriteLine(content);
            sw.WriteLine("-----------------------------------------------------------");
            sw.Flush();
        }
        public static void LogInfo(string content, Exception ex) 
        {
            if (!IsInit)
            {
                InitLog();
            }
            sw.WriteLine(DateTime.Now+content + " Exception Info :" + ex.StackTrace);
            sw.WriteLine("-----------------------------------------------------------");
            sw.Flush();
        }
        public static void Dispose()
        {
            if (sw != null)
            { 
                sw.Dispose(); 
            }
        }


        /// <summary>
        /// Check the log file in applcation directory.
        /// If it is not available, creae it
        /// 
        /// <RETURNS>Log file path</RETURNS>
        ///</summary>
        private static string GetLogFilePath()
        {
            try
            {                
                // get the base directory
                string baseDir = AppDomain.CurrentDomain.RelativeSearchPath;

                // search the file below the current directory
                string retFilePath = baseDir + "\\"+DateTime.Now.ToShortDateString()+"_" + ConfigurationManager.ConnectionStrings["LogPath"].ConnectionString;

                // if exists, return the path
                if (File.Exists(retFilePath) == true)
                    return retFilePath;
                //create a text file
                else
                {                   
                    FileStream fs = new FileStream(retFilePath,
                          FileMode.OpenOrCreate, FileAccess.ReadWrite);
                    fs.Close();
                }

                return retFilePath;
            }
            catch (Exception)
            {
                return string.Empty;
            }
        }
    }
}
