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

namespace InjectNowGui
{
    /// <summary>
    /// Interaction logic for MainMenuWindow.xaml
    /// </summary>
    public partial class MainMenuWindow : Window
    {
        public MainMenuWindow()
        {
            InitializeComponent();
        }
        private void CartButton_Click (object sender, RoutedEventArgs e)
        {
            Cart cartWindow = new Cart();

            // Show the Cart window
            cartWindow.Show();

            // Close the current MainMenuWindow
            this.Close();

        }
    }
}
