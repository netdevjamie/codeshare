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
                NoEnumStrategy(text, context);
                context.SaveChanges();
            }
        }

        static void NoEnumStrategy(string text, Model1Container context)
        {
            foreach (var fileImportLine in text.Split('\r'))
            {
                var fields = fileImportLine.Split('|');
                var fileImport = new FileImports();
                fileImport.email = fields[3];
                fileImport.firstName = fields[0];
                fileImport.lastName = fields[1];
                fileImport.phoneNumber = fields[2];
                context.FileImports1.Add(fileImport);
            }
        }
        static void NoInitializerStrategy(string text, Model1Container context)
        {
            foreach (var fileImportLine in text.Split('\r'))
            {
                var fields = fileImportLine.Split('|');
                var fileImport = new FileImports();
                fileImport.email = fields[(int)TextFields.Email];
                fileImport.firstName = fields[(int)TextFields.FirstName];
                fileImport.lastName = fields[(int)TextFields.LastName];
                fileImport.phoneNumber = fields[(int)TextFields.PhoneNumber];
                context.FileImports1.Add(fileImport);
            }
        }

        static void NoLinqStrategy(string text, Model1Container context)
        {
            foreach (var fileImportLine in text.Split('\r'))
            {
                var fields = fileImportLine.Split('|');
                var fileImport = new FileImports
                {
                    email = fields[(int)TextFields.Email],
                    firstName = fields[(int)TextFields.FirstName],
                    lastName = fields[(int)TextFields.LastName],
                    phoneNumber = fields[(int)TextFields.PhoneNumber]
                };
                context.FileImports1.Add(fileImport);
            }
        }

        static void LinqStrategy(string text, Model1Container context)
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
            
        }
       
    }
}
