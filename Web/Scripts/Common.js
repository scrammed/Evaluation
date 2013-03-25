//iframe高度自适应
function IFrameReSize(iframename)
{
	var pTar = document.getElementById(iframename);
	if (pTar)
	{  //ff
		if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight)
		{
			pTar.height = pTar.contentDocument.body.offsetHeight;
		} //ie
		else if (pTar.Document && pTar.Document.body.scrollHeight)
		{
			pTar.height = pTar.Document.body.scrollHeight;
		}
	}
}
//iframe宽度自适应
function IFrameReSizeWidth(iframename)
{
	var pTar = document.getElementById(iframename);
	if (pTar)
	{  //ff
		if (pTar.contentDocument && pTar.contentDocument.body.offsetWidth)
		{
			pTar.width = pTar.contentDocument.body.offsetWidth;
		}  //ie
		else if (pTar.Document && pTar.Document.body.scrollWidth)
		{
			pTar.width = pTar.Document.body.scrollWidth;
		}
	}
}

///刷新页面
function Refresh()
{
	window.location.href = document.location.href + "&date=" + new Date();
}

///日期函数
function get_date()
{
	calendar = new Date();
	day = calendar.getDay();
	month = calendar.getMonth();
	date = calendar.getDate();
	year = calendar.getYear();
	if (year < 100 || navigator.appName.indexOf("Explorer") == -1)
	{
		year = 1900 + year;
	}
	cent = parseInt(year / 100);
	g = year % 19;
	k = parseInt((cent - 17) / 25);
	i = (cent - parseInt(cent / 4) - parseInt((cent - k) / 3) + 19 * g + 15) % 30;
	i = i - parseInt(i / 28) * (1 - parseInt(i / 28) * parseInt(29 / (i + 1)) * parseInt((21 - g) / 11));
	j = (year + parseInt(year / 4) + i + 2 - cent + parseInt(cent / 4)) % 7;
	l = i - j;
	emonth = 3 + parseInt((l + 40) / 44);
	edate = l + 28 - 31 * parseInt((emonth / 4));
	emonth--;

	var dayname = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
	var monthname =
                new Array("1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月");

	return year + "年" + monthname[month] + date + "日" + " " + dayname[day];
}

function ChangeColor(name, color1, color2)
{
	var i = 0;
	var trList = $("[name='" + name + "']");
	trList.each(function()
	{
		if (i % 2 == 0)
		{
			color = color1;
		}
		else
		{
			color = color2;
		}
		i++;
		$(this).css("background", color);
	});
}

var IEType = { Ie6: 'Ie6',Ie7: 'Ie7', Ie8: 'Ie8', Safari: 'IeSafari', MSIE: 'MSIE', Firefox: 'Firefox' };

function GetIE()
{
	var str = navigator.userAgent;

	if (str.indexOf("MSIE 7.0") > 0)
	{
		return IEType.Ie6;
	}

	if (str.indexOf("MSIE 7.0") > 0)
	{
		return IEType.Ie7;
	}

	if (str.indexOf("MSIE 8.0") > 0)
	{
		return IEType.Ie8;
	}

	if (str.indexOf("Firefox") > 0)
	{
		return IEType.Firefox;
	}

	if (str.indexOf("Safari") > 0)
	{
		return IEType.Safari;
	}
}


function IE1()
{
}