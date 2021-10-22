using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//Created by Tejvir Singh 2013829

namespace HondiMotors
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panelPricing.Visible = false;
            panelInformation.Visible = false;

            if (!Page.IsPostBack)
            {
                txtPhoneNumber.Visible = lblPhoneNumber.Visible = false;

                //Adding cars.
                cboCar.Items.Add(new ListItem("Select a Car"));
                cboCar.Items.Add(new ListItem("Civoc", "25000"));
                cboCar.Items.Add(new ListItem("DR-V", "30000"));
                cboCar.Items.Add(new ListItem("Appord", "33000"));
                cboCar.Items.Add(new ListItem("Cilot", "45000"));
                cboCar.Items.Add(new ListItem("Odyrrey", "54000"));

                //Adding Interior Colors.
                lstInterior.Items.Add(new ListItem("White (Free)", "0"));
                lstInterior.Items.Add(new ListItem("Dark", "300"));
                lstInterior.Items.Add(new ListItem("Pearl", "900"));

                lstInterior.SelectedIndex = 0;

                //Adding accessories
                chkListAccessories.Items.Add(new ListItem("Aero Kit", "1300"));
                chkListAccessories.Items.Add(new ListItem("Film", "600"));
                chkListAccessories.Items.Add(new ListItem("Cold Weather", "900"));
                chkListAccessories.Items.Add(new ListItem("Hondi Emblem", "150"));
                chkListAccessories.Items.Add(new ListItem("Snow Tyre Package", "1800"));

                //Adding Warranties
                radlstWarranty.Items.Add(new ListItem("3 Years (Included)", "0"));
                radlstWarranty.Items.Add(new ListItem("5 Years", "1000"));
                radlstWarranty.Items.Add(new ListItem("7 Years", "1500"));

                radlstWarranty.SelectedIndex = 0;

            }

            if(cboCar.SelectedIndex > 0)
            {
                clculatePrice();
            }

        }


        private void clculatePrice()
        {
            decimal price = 0;
            decimal totalWithTaxes = 0;
            decimal interior = 0;
            decimal accessories = 0;
            decimal warranty = 0;
            decimal totalWithoutTaxes = 0;

            price = Convert.ToDecimal(cboCar.SelectedItem.Value);

            litPricing.Text = "<br>Car Price: $" + price + "<br>";

            foreach(ListItem item in lstInterior.Items)
            {
                interior += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }

            litPricing.Text += "Interior Color: $" + interior + "<br>";

            foreach(ListItem item in chkListAccessories.Items)
            {
                accessories += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }

            litPricing.Text += "Accessories: $" + accessories + "<br>";

            foreach(ListItem item in radlstWarranty.Items)
            {
                warranty += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }

            litPricing.Text += "Warranty: $" + warranty + "<br><br><br>";

            totalWithoutTaxes = price + interior + accessories + warranty;

            litPricing.Text += "Total Without Taxes: $" + totalWithoutTaxes + "<br><br>";

            totalWithTaxes = totalWithoutTaxes + (totalWithoutTaxes * Convert.ToDecimal(0.15));
            totalWithTaxes = Math.Round(totalWithTaxes, 2);

            litPricing.Text += "Total With Taxes: $" + totalWithTaxes + "";

            panelPricing.Visible = true;

        }





        protected void cboCar_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void chkDealerContact_CheckedChanged(object sender, EventArgs e)
        {
            lblPhoneNumber.Visible = txtPhoneNumber.Visible = chkDealerContact.Checked;
        }

        protected void btnConclude_Click(object sender, EventArgs e)
        {
            panelInformation.Visible = true;

            litConclude.Text = "Congratulatons to obtain your new Hondi " + cboCar.SelectedItem.Text + " in " + txtCity.Text + ", " + txtZipCode.Text + ".<br><br>";

            litConclude.Text += "Your car comes with " + lstInterior.SelectedItem.Text + " interior color, ";

            foreach (ListItem item in chkListAccessories.Items)
            {
                
                    litConclude.Text += item.Selected ? item.Text + ", " : "";
                
            }

            litConclude.Text += " accessories.<br><br>";

            litConclude.Text += "You chose " + radlstWarranty.SelectedItem.Text + " of warranty";

            if (chkDealerContact.Checked)
            {
                litConclude.Text += " and our dealer will contact you on phone number " + txtPhoneNumber.Text + ".";
            }
            else
            {
                litConclude.Text += ".";
            }
        }
    }
}