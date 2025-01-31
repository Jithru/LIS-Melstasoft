﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateCaseActivity.aspx.cs" Inherits="LegalSystemWeb.UpdateCaseActivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card o-hidden border-0 shadow-lg my-3">
        <div class="card-header">
            <h5>Update Case Activity</h5>
        </div>
        <div class="card-body">

            <form class="user">

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal16" runat="server" Text="Case Number"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:DropDownList ID="ddlCase" runat="server" CssClass="btn btn-primary dropdown-toggle"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"
                                    ControlToValidate="ddlCase" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mb-5">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row mb-3">
                                    <div class="col-sm-6">
                                        <p>Company</p>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="lblCompany" runat="server" Text="Company Name"></asp:Label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-6">
                                        <p>Case Description</p>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="lblDescription" runat="server" Text="Case Description"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p>Plaintiff</p>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="lblPlaintiff" runat="server" Text="Plaintiff Name"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="row mb-3">
                                    <div class="col-sm-6">
                                        <p>Company Unit</p>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="lblCompanyUnit" runat="server" Text="Company Unit Name"></asp:Label>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-sm-6">
                                        <p>Nature of Case</p>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="lblNature" runat="server" Text="Nature of the Case"></asp:Label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p>Difendant</p>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:Label ID="lblDefendant" runat="server" Text="Difendant Name"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal17" runat="server" Text="Date"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server"
                                    ControlToValidate="txtDate" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <asp:Literal ID="Literal2" runat="server" Text="Appeared Lawyer(Company Side)"></asp:Literal>
                    </div>
                    <div class="col-sm-6">
                        <asp:Literal ID="Literal4" runat="server" Text="Appeared Lawyer(Other Side)"></asp:Literal>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal1" runat="server" Text="Assigning Attorney"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:DropDownList ID="ddlAssignAttorney" runat="server" CssClass="btn btn-primary dropdown-toggle"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="ddlAssignAttorney" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row mb-5">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal6" runat="server" Text="Counselor"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:DropDownList ID="ddlCounselor" runat="server" CssClass="btn btn-primary dropdown-toggle"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ControlToValidate="ddlCounselor" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal3" runat="server" Text="Name"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtOtherLawyer" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    ControlToValidate="txtOtherLawyer" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal5" runat="server" Text="Judge Name"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtJudgeName" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                    ControlToValidate="txtJudgeName" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal7" runat="server" Text="Company Representer"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtCompanyRepresenter" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                    ControlToValidate="txtCompanyRepresenter" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal8" runat="server" Text="Action Taken"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:DropDownList ID="ddlActionTaken" runat="server" CssClass="btn btn-primary dropdown-toggle"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                    ControlToValidate="ddlActionTaken" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal9" runat="server" Text="Next Date"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtNextDate" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-6">
                                <asp:Literal ID="Literal10" runat="server" Text="Next Action"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:DropDownList ID="ddlNextAction" runat="server" CssClass="btn btn-primary dropdown-toggle"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                    ControlToValidate="ddlNextAction" ErrorMessage="Required">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-3">
                        <asp:Literal ID="Literal12" runat="server" Text="Remarks"></asp:Literal>
                    </div>
                    <div class="col-md-9">
                        <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div>

                <div id="case-close">
                    <div class="row mb-3 ms-1">
                        <div class="col-md-3">
                            <asp:Literal ID="Literal15" runat="server" Text="Judgement"></asp:Literal>
                        </div>
                        <div class="col-md-9">
                            <asp:RadioButtonList ID="rbIsPlantiff" runat="server" RepeatDirection="Vertical" CssClass="margin-left:10px">
                                <asp:ListItem Value="P" CssClass="form-check-input">Flavour of the Company</asp:ListItem>
                                <asp:ListItem Value="P" CssClass="form-check-input">Flavour of the Other Party</asp:ListItem>
                                <asp:ListItem Value="D" CssClass="form-check-input">Other</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>

                    <div class="row mb-3 ms-1">
                        <div class="col-sm-3">
                            <asp:Literal ID="Literal11" runat="server" Text="Outcome"></asp:Literal>
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtOutcome" runat="server" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row mb-3 ms-1">
                        <div class="col-sm-3">
                            <asp:Button ID="btnUpdateActivity" runat="server" Text="Update Case" CssClass="btn btn-secondary btn-user btn-block" />
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-primary btn-user btn-block" />
                        </div>
                    </div>

                </div>
            </form>
        </div>
    </div>



</asp:Content>
