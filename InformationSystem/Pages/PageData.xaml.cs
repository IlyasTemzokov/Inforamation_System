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
using System.Data.Entity;

namespace InformationSystem.Pages
{
    public partial class PageData : Page
    {
        public List<DataBase.Core.Personal> Personals { get; set; }
        
        public PageData()
        {
            InitializeComponent();
            LoadData();
        }

        public void LoadData()
        {
            using (var context = new DataBase.Core.Context())
            {
                Personals = context.Personal.Include(item => item.Role).Where(item => !item.IsDeleted).ToList();
                GridData.ItemsSource = Personals;
            }
        }
    }
}
