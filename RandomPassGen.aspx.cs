using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RandomPassGen : System.Web.UI.Page
{
    string password;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [STAThread]
    protected void Button1_Click(object sender, EventArgs e)
    {
        string characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklnopqrstuvxyz1234567890!@%^&*(){}><#$";
       
        Random r = new Random();
        int length=r.Next(8,10);
        char[] chars=new char[length];
        
        for(int i = 0; i < length; i++)
        {
            password += characters[r.Next(0, characters.Length)];
        }
        
        TextBox1.Text = password;
        
    }

    //private void myFun()
    //{
    //    //throw new NotImplementedException();
    //    System.Windows.Forms.Clipboard.SetText(Label1.Text);
    //}

    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    Thread sta = new Thread(new ThreadStart(myFun));
    //    sta.ApartmentState = ApartmentState.STA;
    //    sta.Start();
    //    Label2.Text = "Copied!";
    //}
}