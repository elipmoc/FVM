using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Antlr4.Runtime;
using Antlr4.Runtime.Tree;
using FIRParser;

namespace FVM
{
    class Program
    {

        static void Main(string[] args)
        {
            new FIRParser.Hello();
            while (true)
            {
                string parsedString = Console.ReadLine();
                var inputStream = new AntlrInputStream(parsedString);
                var lexer = new FIrInterpreterLexer(inputStream);
                var commonTokenStream = new CommonTokenStream(lexer);
                var parser = new FIrInterpreterParser(commonTokenStream);
                var graphContext = parser.entry();
                Console.WriteLine(graphContext.ToStringTree());
            }
        }
    }
}
