using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace InformationSystem
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            FrameWorkSpase.Navigate(new Pages.PageData());

        }

        private void ButtonCreate_Click(object sender, RoutedEventArgs e)
        {
            if(new Windows.WindowCreatePersonal().ShowDialog().Value)
                (FrameWorkSpase.Content as Pages.PageData).LoadData();
        }

        private void ButtonDelete_Click(object sender, RoutedEventArgs e)
        {
            var person = (FrameWorkSpase.Content as Pages.PageData).GridData.SelectedItem;
            if (person is null)
                return;

            using (var context = new DataBase.Core.Context())
            {
                context.Personal.Remove(context.Personal.Find((person as DataBase.Core.Personal).ID));
                context.SaveChanges();
                (FrameWorkSpase.Content as Pages.PageData).LoadData();
            }
        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
