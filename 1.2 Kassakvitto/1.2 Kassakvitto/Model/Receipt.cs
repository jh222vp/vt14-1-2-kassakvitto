using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1._2_Kassakvitto.Model
{
    public class Receipt
    {
        //Fält, Fields
        double _subtotal;

        //Egenskaper
        public double DiscountRate
        {
           get;
           private set;
        }
        public double MoneyOff
        {
            get;
            private set;
        }
        public double Subtotal
        {
            get {return _subtotal;}
            private set
            {
                if (value > 0)
                {
                    _subtotal = value;
                }
                else
                {
                    throw new ApplicationException();
                }
            }
        }
        public double Total
        {
            get;
            private set;
        }
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if (subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if (subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (subtotal < 5000)
            {
                DiscountRate = 0.1;
            }
            else
            {
                DiscountRate = 0.15;
            }
            
            MoneyOff = subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;
        }

        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }
    }
}