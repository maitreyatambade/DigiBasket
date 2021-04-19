<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <img class="mySlides w3-animate-right" src="data/offer/1.jpg"  
                    style="margin: auto; display: block;" height="300" 
                    width="1100" >
                <img class="mySlides w3-animate-right" src="data/offer/2.jpg" style="margin-right: auto; margin-left: auto; display: block;" height="270" width="1100">
                 <img class="mySlides w3-animate-right" src="data/offer/3.jpg" style="margin-right: auto; margin-left: auto; display: block" height="270" width="1100"> 
                <img class="mySlides w3-animate-right" src="data/offer/4.jpg" 
                    style="margin-right: auto; margin-left: auto; display: block" height="270" width="1100">
                    <img class="mySlides w3-animate-right" src="data/offer/5.jpg" 
                    style="margin-right: auto; margin-left: auto; display: block" height="270" width="1100">
                    <img class="mySlides w3-animate-right" src="data/offer/6.jpg" 
                    style="margin-right: auto; margin-left: auto; display: block" height="270" width="1100">
                    
        <script>
            var myIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) { myIndex = 1 }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 2500);
            }
        </script>
            </td>
        </tr>
    </table>
</asp:Content>


