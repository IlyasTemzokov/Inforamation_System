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
using System.Windows.Shapes;

namespace InformationSystem.Windows
{
    /// <summary>
    /// Логика взаимодействия для WindowCreatePersonal.xaml
    /// </summary>
    public partial class WindowCreatePersonal : Window
    {

        class SelectedRole
        {
            public bool IsSelected { get; set; }
            public DataBase.Core.Role Role { get; set; }
        }

        List<SelectedRole> Roles;

        public WindowCreatePersonal()
        {
            InitializeComponent();
            using (var context = new DataBase.Core.Context())
            {
                Roles = context.Role.Select(item => new SelectedRole 
                {
                    IsSelected = false,
                    Role = item,
                }).ToList();
                ListViewRoles.ItemsSource = Roles;
            }
        }

        private void ButtonCancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }

        private void ButtonConfirm_Click(object sender, RoutedEventArgs e)
        {
            string Name = TextBoxName.Text;
            string SurName = TextBoxSurName.Text;
            string Otchestvo = TextBoxOtchestvo.Text;
            DateTime? Birthday = DatePickerBirthday.SelectedDate;
            List<int> RolesId = Roles.Where(item => item.IsSelected).Select(item => item.Role.ID).ToList();

            if (Name.Length == 0 || SurName.Length == 0 || Otchestvo.Length == 0 || Birthday is null)
                return;

            using (var context = new DataBase.Core.Context())
            {
                context.Personal.Add(new DataBase.Core.Personal
                {
                    Name = Name,
                    SurName = SurName,
                    Otchestvo = Otchestvo,
                    Birthday = Birthday.Value,
                    Role = context.Role.Where(item => RolesId.Contains(item.ID)).ToList()
                }) ;
                context.SaveChanges();
            }
            DialogResult = true;
        }
    }
}
