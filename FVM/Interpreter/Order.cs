using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FVM.Interpreter
{
    static class Order
    {
        static void output<T>(Expr<T> expr)
        {
            Console.WriteLine(expr.Result());
        }
    }
}
