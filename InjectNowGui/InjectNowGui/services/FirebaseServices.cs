using Google.Cloud.Firestore;

string path = "injectnow-9d109-firebase-adminsdk-iu12g-bbe5277db7.json";
Environment.SetEnvironmentVariable("GOOGLE_APPLICATION_CREDENTIALS", path);
FirestoreDb db = FirestoreDb.Create("InjectNow");

CollectionReference collectionRef = db.Collection("users");
Dictionary<string, string> exampleUsersCreds = new Dictionary<string, string>
{
    {
        "email1@gmail.com","passwd1"
    },
    {
        "email2@gmail.com",
        "passwd2"
    }
};

await collectionRef.AddAsync(exampleUsersCreds);
