using System;
using System.Configuration;
using System.Text;
using System.Data;

namespace Common
{
	/// <summary>
	/// Assistant 的摘要说明。
	/// </summary>
	public sealed class Assistant
	{		
			
		#region

		/// <summary>
		/// 从字符串里随机得到，规定个数的字符串.
		/// </summary>
		/// <param name="allChar"></param>
		/// <param name="CodeCount"></param>
		/// <returns></returns>
		public static string GetRandomCode(string allChar,int CodeCount) 
		{ 
			//string allChar = "1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,i,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"; 
			string[] allCharArray = allChar.Split(','); 
			string RandomCode = ""; 
			int temp = -1; 
			Random rand = new Random(); 
			for (int i=0;i<CodeCount;i++) 
			{ 
				if (temp != -1) 
				{ 
					rand = new Random(temp*i*((int) DateTime.Now.Ticks)); 
				} 

				int t = rand.Next(allCharArray.Length-1); 

				while (temp == t) 
				{ 
					t = rand.Next(allCharArray.Length-1); 
				} 
		
				temp = t; 
				RandomCode += allCharArray[t]; 
			} 
			return RandomCode; 
		}

        public static int GetRandomInt(int s, int e) 
        {
            int random = Convert.ToInt16(new Random().Next().ToString().Substring(0, 1));
            while (random>e || random<s)
            {
                random = Convert.ToInt16(new Random().Next().ToString().Substring(0, 1));
            }
            return random;
        }

		#endregion
		
    }
}
