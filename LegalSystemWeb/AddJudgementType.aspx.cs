﻿using LegalSystemCore.Common;
using LegalSystemCore.Controller;
using LegalSystemCore.Domain;
using LegalSystemCore.Infrastructure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LegalSystemWeb
{
    public partial class AddJudgementType : System.Web.UI.Page
    {
        List<JudgementType> judgementTypeList = new List<JudgementType>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (Session["User_Role_Id"].ToString() == "1" || Session["User_Role_Id"].ToString() == "2")
                {
                    BindDataSource();
                }
                else
                {
                    Response.Redirect("404.aspx");
                }
            }
        }

        private void BindDataSource()
        {
            IJudgementTypeController judgementTypeController = ControllerFactory.CreateJudgementTypeController();

            judgementTypeList = judgementTypeController.GetJudgementTypeList();
            gvJudgementType.DataSource = judgementTypeController.GetJudgementTypeList();
            gvJudgementType.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            IJudgementTypeController judgementTypeController = ControllerFactory.CreateJudgementTypeController();

            if (btnSave.Text == "Update")
            {
                int rowIndex = (int)ViewState["updatedRowIndex"];
                JudgementType judgementType = new JudgementType();
                judgementType.JTypeId = rowIndex;
                judgementType.JTypeName = txtJType.Text;

                judgementTypeController.Update(judgementType);
                btnSave.Text = "Save";
            }
            else
            {
                JudgementType judgementType = new JudgementType();
                judgementType.JTypeName = txtJType.Text;
                judgementType.JTypeId = judgementTypeController.Save(judgementType);
            }

            Clear();
            BindDataSource();

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            GridViewRow gv = (GridViewRow)((LinkButton)sender).NamingContainer;
            int rowIndex = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
            if (gvJudgementType.PageIndex != 0)
            {
                rowIndex = (gvJudgementType.PageSize + rowIndex) * (gvJudgementType.PageIndex);
            }
            txtJType.Text = judgementTypeList[rowIndex].JTypeName;
            btnSave.Text = "Update";
            ViewState["updatedRowIndex"] = judgementTypeList[rowIndex].JTypeId;
        }

        private void Clear()
        {
            txtJType.Text = string.Empty;
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            IJudgementTypeController judgementTypeController = ControllerFactory.CreateJudgementTypeController();
            int rowIndex = ((GridViewRow)((LinkButton)sender).NamingContainer).RowIndex;
            if (gvJudgementType.PageIndex != 0)
            {
                rowIndex = (gvJudgementType.PageSize + rowIndex) * (gvJudgementType.PageIndex);
            }
            JudgementType judgementType = new JudgementType();
            judgementType.JTypeId = judgementTypeList[rowIndex].JTypeId; ;

            judgementTypeController.Delete(judgementType);
            BindDataSource();
        }

        protected void gvJudgementType_OnPageIndexChanged(object sender, GridViewPageEventArgs e)
        {
            gvJudgementType.PageIndex = e.NewPageIndex;
            this.BindDataSource();
        }
    }
}