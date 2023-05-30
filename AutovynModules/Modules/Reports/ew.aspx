﻿
<%@ Page Title="EW" Language="vb" AutoEventWireup="false" MasterPageFile="~/AutovynModules/AUTOVYN.Master" CodeBehind="ew.aspx.vb"  Inherits="AutovynERP.ew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    
    	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>


    <style>

        *{
            margin:0;
            padding:0;
            box-sizing:border-box;

            scrollbar-width: thin;
            scrollbar-color: #397524 #DFE9EB;
        }
         .chart{
           
        }
           .row {
            border-bottom: 0.5px solid silver;
        }
        #chart {
            max-width: 650px;
            margin: 35px auto;
        }

            /* Chrome, Edge and Safari */
            *::-webkit-scrollbar {
                width: 7px;
                width: 7px;
            }

            *::-webkit-scrollbar-track {
                border-radius: 5px;
                background-color: aliceblue;
            }

                *::-webkit-scrollbar-track:hover {
                    background-color: #B8C0C2;
                }

                *::-webkit-scrollbar-track:active {
                    background-color: #B8C0C2;
                }

            *::-webkit-scrollbar-thumb {
                border-radius: 5px;
                background-color: #397524;
            }

                *::-webkit-scrollbar-thumb:hover {
                    background-color: #62A34B;
                }

                *::-webkit-scrollbar-thumb:active {
                    background-color: #62A34B;
                }

        .main-section{
            margin-top:60px;
            margin-bottom:60px;
        }


        .navbar {
            
        }

        .date-section{
            background-color:gainsboro;
        }

        .date{
            font-size: 20px;
            font-weight: 700;
        }

        .view {
            background-color: green;
            border: none;
            padding: 8px 28px;
            color: #ffffff;
        }

        .tabs-lbl {
            background-color: cornflowerblue;
            margin: 6px 10px;
            height: 37px;
            border-radius:6px;
            color:#fff;
        }

         .status-section{
            background-color: aliceblue;
            margin: 20px 10px;
            border-radius:10px;
            -webkit-box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
            -moz-box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
            box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
        }

        .sub-head{
            padding: 7px 0;
             -webkit-box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
            -moz-box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
            box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
        }

        .status{
            font-size: 18px;
            font-weight: 700;
        }
        .sub-head{
            padding: 7px 0;
             -webkit-box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
            -moz-box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
            box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
        }
        
        .loc-sub-head{
            padding: 7px 0;
            display: flex;
            justify-content: space-around;
        }


        .status{
            font-size: 18px;
            font-weight: 700;

        }

        .lbl {
            font-size: 20px;
            font-weight: bold;
            text-transform: uppercase;
            color: green;
        }

        .loc-box{
            height:130px;
            width :100%;
            -webkit-box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
            -moz-box-shadow: -2px 6px 15px -11px rgba(0,0,0,0.75);
            box-shadow: -2px 6px 15px -11px rgb(0 0 0 / 75%);
            border-radius: 6px;
            text-align:center;
            margin-right: 0px;
            font-size:18px;
            font-weight:700;
        }

        .total {
            background-color:#a7e2cb;
            height: 59px;
            border-radius: 6px 6px 40px 40px;
            padding-top: 16px;
            color:#000000;
            font-size:12px;
            font-weight:700;
        }

        .panel{
            width:16%;
        }

        .report-grid{
            height:60vh;
        }

        @media screen and (max-width: 827px) {
            .panel{
            width:30%;
        }
        }
        
        @media screen and (max-width: 768px) {
            .panel{
            width:30%;
        }
        }

        @media screen and (max-width: 480px) {
        .loc-box {
            height: 130px;
            width:100%;
        }
        .panel{
            width:48%;
        }

         .view{
                width:100%;
                margin-top:10px;
            }
        }
        #Volume_Label {
            font-size:20px;
            font-weight:bold;
        }
             #ContentPlaceHolder1_Amount_Grid{
            top:40px !important;
        }

                .popup {
            display: none;
            position: absolute;
            width: 50%;
            transform: translate(-50%, -50%);
            z-index: 999;
            background-color: #e9e9e9;
            padding: 20px;
            border: 1px solid #ccc;
            margin-left: 48%;
            margin-top: -21%;
        }
     
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid main-section">
        <%-- Status Section --%>
        <div class="row status-section">
            <div class="col-12">
                <div class="row sub-head">
                    <div class="col-3 mt-1">
                        <asp:Label ID="Label4" runat="server" Text="GROUP LEVEL STATUS" CssClass="status"></asp:Label>
                    </div>

                    <asp:Label ID="Label2" CssClass="col-sm-1 col-form-label" runat="server" Text="Year From"></asp:Label>
                    <div class="col-sm-1">
                        <asp:TextBox ID="Year_From" CssClass="form-control"  placeholder="YYYY" onchange="compareDates()" runat="server"></asp:TextBox>
                    </div>

                    <asp:Label ID="Label1" CssClass="col-sm-1 col-form-label" runat="server" Text="Year To"></asp:Label>
                    <div class="col-sm-1">
                        <asp:TextBox ID="Year_To" CssClass="form-control"  placeholder="YYYY"  onchange="compareDates()" runat="server"></asp:TextBox>
                    </div>

<%--                    <asp:Label ID="Label3" CssClass="col-sm-1 col-form-label" runat="server" Text="Report"></asp:Label>--%>
                    <div class="col-sm-2" style="display:none;">
                        <asp:DropDownList ID="appr_status" CssClass="form-control" runat="server">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem Value="L" Selected="True">List View</asp:ListItem>
                            <asp:ListItem Value="G">Graph View</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="col-sm-2">
                        <asp:Button ID="Load_Location" Text="Load" runat="server" OnClientClick="return validateDropDown();" CssClass="btn view" />
                    </div>

                </div>

                <asp:Panel ID="Report_Panel" runat="server" CssClass="report-grid">
                    
                    <asp:GridView ID="Report_Grid" runat="server" CssClass="" Style="top: 0px; border: 1px solid #6fd472; text-align: center; border-collapse: inherit; background-color: hsla(40deg, 4%, 36%, 0.25); position: relative; width: 100%; table-layout: auto;"
                            ShowHeaderWhenEmpty="True" CellPadding="3" GridLines="both" BackColor="White" PagerStyle-CssClass="myPagerStyle" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1">
                           <Columns>
                        </Columns>
                        <AlternatingRowStyle BackColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="true" Font-Size="Larger" ForeColor="White" />
                            <RowStyle BackColor="#f5f5f5" />
                            <HeaderStyle BackColor="#0C4160" ForeColor="WhiteSmoke" Width="100%" />
                            <FooterStyle BackColor="#CCCCCC" />
                            <SelectedRowStyle Font-Size="Large" />
                            <HeaderStyle Font-Bold="True" ForeColor="White" Width="100%" />
                            <SelectedRowStyle BackColor="#336699" Font-Bold="True" ForeColor="White" />
                            <PagerSettings FirstPageText="1" LastPageText="last" NextPageText="next" PreviousPageText="previous" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        </asp:GridView>
                </asp:Panel>



                <asp:Panel ID="Amount_Panel" runat="server">
                    <asp:Label ID="Volume_lbl" CssClass="lbl" runat="server" Text="Volume"></asp:Label>
                    <asp:GridView ID="Amount_Grid" runat="server" CssClass="" Style="top: 0px; border: 1px solid #6fd472; text-align: center; border-collapse: inherit; background-color: hsla(40deg, 4%, 36%, 0.25); position: relative; width: 100%; table-layout: auto;"
                            ShowHeaderWhenEmpty="True" CellPadding="3" GridLines="both" BackColor="White" PagerStyle-CssClass="myPagerStyle" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1">
                          <Columns>
                            <asp:TemplateField HeaderText="Show Graph">
                                <ItemTemplate>
                                     <button type="button" class="btn grph_btn"><i class="fa fa-bar-chart"></i></button>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <AlternatingRowStyle BackColor="White" />
                            <HeaderStyle BackColor="#6B696B" Font-Bold="true" Font-Size="Larger" ForeColor="White" />
                            <RowStyle BackColor="#f5f5f5" />
                            <HeaderStyle BackColor="#0C4160" ForeColor="WhiteSmoke" Width="100%" />
                            <FooterStyle BackColor="#CCCCCC" />
                            <SelectedRowStyle Font-Size="Large" />
                            <HeaderStyle Font-Bold="True" ForeColor="White" Width="100%" />
                            <SelectedRowStyle BackColor="#336699" Font-Bold="True" ForeColor="White" />
                            <PagerSettings FirstPageText="1" LastPageText="last" NextPageText="next" PreviousPageText="previous" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        </asp:GridView>
                </asp:Panel>

            </div>

               <div class='popup'>
                 <h5 align="center">EW Graph <label class="br_name"></label></h5>
                <div id="chart" class="chart" style="margin-top: 70px">
                   
                </div>
                <button id="closePopupBtn" class="btn">Close</button>
            </div>

        </div>

    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/inputmask/inputmask.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/inputmask/inputmask.date.extensions.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/inputmask/inputmask.extensions.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.inputmask/3.3.4/css/inputmask.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <script>
        $(function () {
            var inputmask = new Inputmask("99/99/9999", { placeholder: 'dd/mm/yyyy' });
            inputmask.mask($('[id*=DateLabel]'));
        });
</script>

    <script type="text/javascript">
        function validateDropDown() {
            var year_from = document.getElementById("ContentPlaceHolder1_Year_From").value;
            var year_to = document.getElementById("ContentPlaceHolder1_Year_To").value;


            if (year_from == '' || year_to == '') {
                Swal.fire({
                    icon: 'warning',
                    title: 'Please Enter Year',
                });
                return false;
            }
            if (year_from.length < 4 || year_to.length < 4) {
                Swal.fire({
                    icon: 'warning',
                    title: 'Please Enter Valid Year',
                });
                return false;
            }
        }
    </script>

    
            	<script>
                    function restrictInput(event) {
                        var charCode = (event.which) ? event.which : event.keyCode;
                        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                            event.preventDefault();
                        }
                        var value = document.getElementById("ContentPlaceHolder1_Year_From").value;

                        if (value.length >= 4) {
                            event.preventDefault();
                        }

                    }
                    function restrictInput1(event) {
                        var charCode = (event.which) ? event.which : event.keyCode;
                        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                            event.preventDefault();
                        }
                        var value2 = document.getElementById("ContentPlaceHolder1_Year_To").value;

                        if (value2.length >= 4) {
                            event.preventDefault();
                        }
                    }

                    var Year_From = document.getElementById("ContentPlaceHolder1_Year_From");
                    var Year_to = document.getElementById("ContentPlaceHolder1_Year_To");

                    if (Year_From.addEventListener) {
                        Year_From.addEventListener("keypress", restrictInput);
                    } else if (Year_From.attachEvent) {
                        Year_From.attachEvent("onkeypress", restrictInput);
                    }

                    if (Year_to.addEventListener) {
                        Year_to.addEventListener("keypress", restrictInput1);
                    } else if (Year_to.attachEvent) {
                        Year_to.attachEvent("onkeypress", restrictInput1);
                    }
                </script>



        <script>
            function compareDates() {
                const fromDate = new Date(document.getElementById("ContentPlaceHolder1_Year_From").value);
                const toDate = new Date(document.getElementById("ContentPlaceHolder1_Year_To").value);

                if (toDate < fromDate) {
                    alert("To date must be greater than from date.");
                    document.getElementById("ContentPlaceHolder1_Year_To").value = "";
                }
            }
        </script>

    <script>


           $("tr").click(function () {

               var selectedRow = $(this);
               var rowIndex = selectedRow.index();

               var cellValue = selectedRow.find("td:eq(1)").text();
               var frm_year = $('#ContentPlaceHolder1_Year_From').val();
               var to_year = $('#ContentPlaceHolder1_Year_To').val();




               $.ajax({
                   type: "POST",
                   url: "ew.aspx/GetChartData",
                   data: "{cellValue: '" + cellValue + "',frm_year: '" + frm_year + "',to_year: '" + to_year + "'}",
                   contentType: "application/json; charset=utf-8",
                   dataType: "json",
                   success: function (response) {
                       // Parse the JSON string to a JavaScript object
                       var data = JSON.parse(response.d);
                       console.log(data)

                       const seriesData = Object.values(data[0]).filter(val => typeof val === "number");

                       console.log(seriesData)
                       // Update the options object with the series data

                       var options = {
                           chart: {
                               height: 280,
                               type: 'area',
                           },
                           dataLabels: {
                               enabled: false
                           },
                           series: [{
                               name: 'Sales',
                               data: seriesData
                           }],
                           xaxis: {
                               title: {
                                   text: 'Months'
                               },
                               categories: ['Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar',]
                           },
                           yaxis: {
                               title: {
                                   text: 'Sales'
                               }
                           }
                       };

                       var chart = new ApexCharts(document.querySelector("#chart"), options);


                       $('.br_name').text(data[0].branch + ': ' + frm_year + '-' + to_year);
                       chart.render();
                       chart.updateSeries([{ data: seriesData }]);

                   },
                   error: function (xhr, ajaxOptions, thrownError) {
                       // Handle the error
                       console.log(xhr.status + ': ' + thrownError);
                   }
               });

               var popup = $('.popup');
               $("body").append(popup);
               popup.show();
           });

    </script>

    <script>
        // Get the close button element
        var closePopupBtn = document.getElementById("closePopupBtn");

        // Get the popup element
        var popup = document.querySelector('.popup');

        closePopupBtn.addEventListener("click", function () {
            // Hide the popup
            popup.style.display = "none";
        });
    </script>

</asp:Content>



