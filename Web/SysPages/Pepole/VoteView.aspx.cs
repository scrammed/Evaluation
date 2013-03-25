using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SysPages_Pepole_VoteView : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBehalfLevel();
            BindrepList();
        }
    }

    private void BindBehalfLevel()
    {
        int n;
        var typeList = BLL.Dictionary.bll.GetList(new Model.QueryDic() { Type = Model.Enums.DicType.代表水平.ToString() }, 0, 0, out n);
        this.ddBehalfLevel.Items.Add(new ListItem("请选择", "-1"));
        foreach (Model.T_Dictionary dic in typeList)
        {
            this.ddBehalfLevel.Items.Add(new ListItem(dic.DisplayText, dic.Id.ToString()));
        }
    }
    void BindrepList()
    {
        int allCount;
        Model.QueryBehalf query = new Model.QueryBehalf();
        query.IsLikeSearch = true;
        if (!string.IsNullOrEmpty(this.txtPhone.Text))
        {
            query.Phone = this.txtPhone.Text;
        }

        if (!string.IsNullOrEmpty(this.txtUserName.Text))
        {
            query.UserName = this.txtUserName.Text;
        }

        if (this.ddBehalfLevel.SelectedValue != "-1")
        {
            query.BehalfLevel = Convert.ToInt32(this.ddBehalfLevel.SelectedValue);
        }
        if (this.ddIsVoted.SelectedValue != "-1")
        {
            query.IsVoted = Convert.ToInt32(this.ddIsVoted.SelectedValue);
        }

        this.repList.DataSource = BLL.Behalf.bll.GetList(query, this.AspNetPager1.PageSize, this.AspNetPager1.CurrentPageIndex, out allCount);
        this.repList.DataBind();
        this.AspNetPager1.RecordCount = allCount;
    }
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        BindrepList();
    }
    public string GetBehalfLevelText(int id)
    {
        return BLL.Dictionary.bll.Get(id).DisplayText;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindrepList();
    }
}
