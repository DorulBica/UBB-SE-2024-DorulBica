using ProductManagement;
using System.Collections.Generic;
using System.Windows;

namespace InjectNow
{
    public partial class Cart : Window
    {
        // Define products as a public property
        public List<Product> Products { get; set; }

        public Cart()
        {
            InitializeComponent();

            // Initialize the products list and add products
            Products = new List<Product>
            {
                new Product(1, "Cocaine", "mental arousal", 5.99, new ProductType("CNS Stimulants"), 10),
                new Product(2, "Marijuana", "relaxer", 2.49, new ProductType("Cannabis"), 20)
            };

            // Bind the list of products to the DataContext of the window
            DataContext = this;
        }
    }
}
