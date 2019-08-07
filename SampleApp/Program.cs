using System;
using System.Diagnostics;
using System.IO;

namespace SampleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            var path = "ExportDescriptions/helloworld.sh";
            ExportDescriptionsFromDatabase(path);
        }

        private static void ExportDescriptionsFromDatabase(string exportBatchFilePath)
        {
            foreach (var file in Directory.EnumerateDirectories("../" + Directory.GetCurrentDirectory()))
            {
                Console.WriteLine(file);
            }
            foreach (var file in Directory.EnumerateFiles("../" + Directory.GetCurrentDirectory()))
            {
                Console.WriteLine(file);
            }
            var process = new Process();
            var startInfo = new ProcessStartInfo("bash", exportBatchFilePath);
            process.StartInfo = startInfo;
            process.Start();
            process.WaitForExit();
            process.Close();
        }
    }
}
