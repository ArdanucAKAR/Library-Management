using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library_Management
{
    interface IOperations
    {
        bool Add();

        bool Update();

        bool Delete();
    }
}
