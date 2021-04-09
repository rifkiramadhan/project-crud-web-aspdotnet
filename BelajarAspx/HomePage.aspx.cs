using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BelajarAspx.Classes;

namespace BelajarAspx
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TampilData();
            }
            
        }

        private void TampilData()
        {
            DataTable Dt = new DataTable();
            Dt = ClsHomepage.TampilData();
            RptTampilBarang.DataSource = Dt;
            RptTampilBarang.DataBind();
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            ClsHomepage.SimpanBarang(TxtNamaBarang.Text, DdlSatuan.SelectedValue, txtKategory.Text);
            TampilData();
            Bersih();
        }

        public void Bersih()
        {
            TxtNamaBarang.Text = string.Empty;
            txtKategory.Text = string.Empty;
            DdlSatuan.SelectedValue = "--Pilih Satuan--";
        }

        protected void BtnEdit_Click(object sender, EventArgs e)
        {
            ClsHomepage.EditBarang(TxtEditNama.Text, DdlEditSatuan.SelectedValue, TxtEditKategory.Text, Convert.ToInt32(TxtEditKode.Text));
            TampilData();
            Bersih();
        }

        protected void BtnHapus_Click(object sender, EventArgs e)
        {
            ClsHomepage.HapusBarang(Convert.ToInt32(TxtEditKode.Text));
            TampilData();
            Bersih();
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }
    }
}