﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FVM.Interpreter
{
    //ベースとなる式
    public interface Expr<T>
    {
        T Result();
    }

    //定数を返す式
    public class ConstantExpr<T> : Expr<T>
    {
        T value;
        public ConstantExpr(T value)
        {
            this.value = value;
        }

        public T Result()
        {
            return value;
        }
    }

}
