using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;

public partial class BehalfVote : WebBasePage
{
    List<ListItem> liList = new List<ListItem>() {
        new ListItem() { Text = "好", Value = "100" } ,     
        new ListItem() { Text = "较好", Value = "75" } ,     
        new ListItem() { Text = "一般", Value = "50" } ,     
        new ListItem() { Text = "差", Value = "25" } 
    };
    protected void Page_Load(object sender, EventArgs e)
    {
        int? isVoted = base.GetBehalf().IsVoted;//是否投票

        if (isVoted != null && isVoted == 1)
        {
            WebHelper.ResponseScript(this, string.Format("alert('您已经投完票了');window.top.location.href='login.aspx'"));
            Response.Redirect("Login.aspx", true);
        }

        if (!IsPostBack)
        {
            BindrepList();
        }
    }

    /// <summary>
    /// 绑定部门列表
    /// </summary>
    void BindrepList()
    {
        this.repList.DataSource = BLL.Sorce.bll.GetDeptSorceList();
        this.repList.DataBind();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        List<T_Sorce> dsList = new List<T_Sorce>();
        //遍历部门
        foreach (RepeaterItem item in this.repList.Items)
        {
            Literal liDeptID = item.FindControl("liDeptID") as Literal;
            RadioButtonList rblist = item.FindControl("rblist") as RadioButtonList;
            var sorce = string.IsNullOrEmpty(rblist.SelectedValue) ? "50" : rblist.SelectedValue;//当没有打分时，默认一般
            dsList.Add(new T_Sorce { Sorce = Convert.ToInt32(sorce), DeptID = Convert.ToInt32(liDeptID.Text) });
        }

        Model.ResultModel rm = BLL.Sorce.bll.Submit(dsList, BLL.Login.bll.GetBehalf().Id);
        if (rm.Result)
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');window.top.location.href='login.aspx'", rm.Message));
        }
        else
        {
            WebHelper.ResponseScript(this, string.Format("alert('{0}');", rm.Message));
        }
    }


    protected void repList_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater repDeptList = e.Item.FindControl("repDeptList") as Repeater;
        repDeptList.DataSource = ((Model.DeptSorce)e.Item.DataItem).DeptList;
        repDeptList.DataBind();
    }
    int random = 0;
    protected void repDeptList_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        random++;
        Model.T_Department dept = (Model.T_Department)e.Item.DataItem;
        Literal liDeptID = e.Item.FindControl("liDeptID") as Literal;
        liDeptID.Text = dept.Id.ToString();

        Literal liDeptName = e.Item.FindControl("liDeptName") as Literal;
        liDeptName.Text = dept.DeptName;

        RadioButtonList rblist = e.Item.FindControl("rblist") as RadioButtonList;
        List<int> vdList = new List<int>();
     
        //生成随机列
        for (int i = 0; i <= 3; i++)
        {
            Random rad = new Random(random);
            int v1 = rad.Next(0, 4);
            while (vdList.Where(v => v == v1).Count() > 0)
            {
                v1 = rad.Next(0, 4);
            };
            vdList.Add(v1);

            ListItem li = liList[v1];
            li.Attributes.Add("onclick", "clickRB(this)");
            rblist.Items.Add(liList[v1]);
        }
    }
    /// <summary>
    /// 获取代表水平
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public string GetBehalfLevelText(int id)
    {
        return BLL.Dictionary.bll.Get(id).DisplayText;
    }
}
