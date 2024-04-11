using ProductManagement;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace InjectNowGui
{
    public partial class Cart : Window
    {
        // Define a property to hold the list of products
        public List<Product> Products { get; set; }

        public Cart()
        {
            InitializeComponent();

            // Initialize the list of products
            Products = new List<Product>
            {
                new(1, "Cocaine", "mental arousal", 5.99, new ProductType("CNS Stimulants"), 10),
                new(2, "Marijuana", "relaxer", 2.49, new ProductType("Cannabis"), 20)
            };

            // Set the data context of the window to itself
            DataContext = this;
        }

       

        // Event handler for increasing quantity
        private void IncreaseQuantity_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var product = button.DataContext as Product;
            product.Quantity++;
        }

        // Event handler for decreasing quantity
        private void DecreaseQuantity_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var product = button.DataContext as Product;

            if (product.Quantity > 0)
            {
                product.Quantity--;
            }
        }

        // Event handler for the Buy button click
        private void BuyButton_Click(object sender, RoutedEventArgs e)
        {
            // Assuming MainMenuWindow is the name of your main window class
            MainMenuWindow mainMenuWindow = new MainMenuWindow();

            // Show the main window
            mainMenuWindow.Show();

            // Close the current window
            this.Close();
        }
    }
}
