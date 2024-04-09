using System;
using System.Collections.Generic;

public class UserType
{
    // Field
    private string type;

    // Property
    public string Type
    {
        get { return type; }
        set { type = value; }
    }

    // Constructor
    public UserType(string type)
    {
        Type = type;
    }
}


public class UserAccount
{
    // Fields
    private string username;
    private string password;
    private string emailAddress;
    private string socialMediaAccount;
    private bool banned;
    private UserType userType;

    // Properties
    public string Username
    {
        get { return username; }
        set { username = value; }
    }

    public string Password
    {
        get { return password; }
        set { password = value; }
    }

    public string EmailAddress
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }

    public string SocialMediaAccount
    {
        get { return socialMediaAccount; }
        set { socialMediaAccount = value; }
    }

    public bool Banned
    {
        get { return banned; }
        set { banned = value; }
    }

    public UserType UserType
    {
        get { return userType; }
        set { userType = value; }
    }

    // Constructor
    public UserAccount(string username, string password, string emailAddress, string socialMediaAccount, bool banned, UserType UserType)
    {
        Username = username;
        Password = password;
        EmailAddress = emailAddress;
        SocialMediaAccount = socialMediaAccount;
        Banned = banned;
        userType = UserType;
    }

    public static UserAccount RegisterAccount(string username, string password, string emailAddress, string socialMediaAccount, UserType userType, List<UserAccount> existingAccounts)
    {
        // Check if the username is unique
        if (IsUsernameUnique(username, existingAccounts))
        {
            // Creating a new user account
            UserAccount newUser = new UserAccount(username, password, emailAddress, socialMediaAccount, false, userType);
            Console.WriteLine("Account registered successfully!");
            return newUser;
        }
        else
        {
            Console.WriteLine("Username already exists. Please choose a different username.");
            return null;
        }
    }

    // Helper function to check if the username is unique
    private static bool IsUsernameUnique(string username, List<UserAccount> existingAccounts)
    {
        foreach (UserAccount account in existingAccounts)
        {
            if (account.Username == username)
            {
                return false;
            }
        }
        return true;
    }
}