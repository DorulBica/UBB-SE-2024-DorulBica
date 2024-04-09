using System;
using System.Collections.Generic;
using System.Linq;
using DrugListingManagement;
using ProductManagement;

namespace ListOfDrugListingsManagement
{
    public class ListOfDrugListings
    {
        private List<DrugListings> drugListings;

        public ListOfDrugListings(List<DrugListings> drugListings)
        {
            this.drugListings = drugListings;
        }

        // Create a new drug listing
        public void AddDrugListing(DrugListings drugListing)
        {
            drugListings.Add(drugListing);
            Console.WriteLine("Drug listing added successfully!");
        }

        // Read all drug listings
        public List<DrugListings> GetAllDrugListings()
        {
            return drugListings;
        }

        // Search for drugs across all listings
        public List<Product> Search(string keyword)
        {
            List<Product> searchResults = new List<Product>();
            foreach (var listing in drugListings)
            {
                foreach (var drug in listing.drugs)
                {
                    if (drug.DrugName.ToLower().Contains(keyword.ToLower()))
                    {
                        searchResults.Add(drug);
                    }
                }
            }
            return searchResults;
        }

        // Filter drug listings by category
        public List<Product> FilterByCategory(string category)
        {
            List<Product> filteredDrugs = new List<Product>();
            foreach (var listing in drugListings)
            {
                foreach (var drug in listing.drugs)
                {
                    if (drug.Category.Type.ToLower() == category.ToLower())
                    {
                        filteredDrugs.Add(drug);
                    }
                }
            }
            return filteredDrugs;
        }

        // Filter drug listings by price range
        public List<Product> FilterByPrice(double minPrice, double maxPrice)
        {
            List<Product> filteredDrugs = new List<Product>();
            foreach (var listing in drugListings)
            {
                foreach (var drug in listing.drugs)
                {
                    if (drug.Price >= minPrice && drug.Price <= maxPrice)
                    {
                        filteredDrugs.Add(drug);
                    }
                }
            }
            return filteredDrugs;
        }

        // Filter drug listings by rating (not implemented in this example)
        public List<Product> FilterByRating(double minRating)
        {
            // Implementation for filtering by rating can be added here
            throw new NotImplementedException();
        }

        // Filter drug listings by dealer username
        public List<Product> FilterByDealer(string dealerUsername)
        {
            List<Product> filteredDrugs = new List<Product>();
            foreach (var listing in drugListings)
            {
                if (listing.dealer.Username.ToLower() == dealerUsername.ToLower())
                {
                    filteredDrugs.AddRange(listing.drugs);
                }
            }
            return filteredDrugs;
        }

        // ToString method
        public override string ToString()
        {
            string listingsString = "";
            foreach (var listing in drugListings)
            {
                listingsString += listing.ToString() + "\n";
            }
            return listingsString;
        }
    }
}
