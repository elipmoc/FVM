using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FVM.Interpreter
{
    public static class Order
    {
        public static void output<T>(Expr<T> expr)
        {
            Console.WriteLine(expr.Result());
        }
    }
}
