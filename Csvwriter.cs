using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Diagnostics;

namespace DataImport
{
    internal class Program
    {
        public enum TextFields
        {
            FirstName,
            LastName,
            PhoneNumber,
            Email
        }
        private static void Main(string[] args)
        {
            var text =
                System.IO.File.ReadAllText(
                    @"C:\Users\jmclaughlin\Documents\PipeDelimitedImportProject\PipeDelimitedFile.dat");

            using (var context = new Model1Container())
            {

                foreach (var fileImport in text.Split('\r').Select(t => t.Split('|')).Select(items => new FileImports
                {
                    email = items[(int)TextFields.Email],
                    firstName = items[(int)TextFields.FirstName],
                    lastName = items[(int)TextFields.LastName],
                    phoneNumber = items[(int)TextFields.PhoneNumber]
                }))
                {
                    context.FileImports1.Add(fileImport);
                }
                context.SaveChanges();
            }

        }
    }
}
