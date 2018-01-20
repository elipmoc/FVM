using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Antlr4.Runtime;
using Antlr4.Runtime.Tree;

namespace FVM
{
    class Program
    {

        static void Main(string[] args)
        {
            while (true)
            {
                string parsedString = Console.ReadLine();
                var inputStream = new AntlrInputStream(parsedString);
                var lexer = new TestLexer(inputStream);
                var commonTokenStream = new CommonTokenStream(lexer);
                var parser = new TestParser(commonTokenStream);
                var graphContext = parser.prog();
                Console.WriteLine(graphContext.ToStringTree());
                Console.WriteLine(graphContext.expr().additive_expr().multiplicative_expr().Length);
            }
        }
    }
}
