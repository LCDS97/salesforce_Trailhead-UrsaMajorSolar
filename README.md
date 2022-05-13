# Trailhead Challenges
> Personal org for my Trailhead Challenges, both admin path and dev path, I will do Hands-on Challenge and questions to further guide for me.

<div align="center">
<img align="center" src="https://media.giphy.com/media/sAq99u03v7IRHlN1dj/giphy.gif" width=300>


<h2> <img src="https://media.giphy.com/media/PijzuUzUhm7hcWinGn/giphy.gif" width=50 /> Completed <img src="https://media.giphy.com/media/PijzuUzUhm7hcWinGn/giphy.gif" width=50 /></h2> 

| Trail      | Description | Difficulty     |
| :---        |    :----:   |          ---: |
| 💾 [Apex Basics & Database](#Apex)     | Trail to study about basics concepts of the language, SOQL and SOSL      | 1 Quiz and 4 Hands On Challenge   |
| ▶️ [Quick Start - Apex](#ApexQuickStart)     | Trail to write my a simple class update of Accounts      | A guided trail to Create a Class   |


</div>
<br>

<div align="center">


<img src="https://media.giphy.com/media/1GEATImIxEXVR79Dhk/giphy.gif" width=400>


<h2> <img src="https://media.giphy.com/media/BaBXfoDOvq6tRyK2L7/giphy.gif" width=30 /> In Progress <img src="https://media.giphy.com/media/BaBXfoDOvq6tRyK2L7/giphy.gif" width=30 /></h2>

| Trail      | Description | Questions and Challenges     |
| :---        |    :----:   |          ---: |
| 🚧[Apex Test](#ApexTest)   | Trail about Test class in Salesforce     | 3 Hands-on Challenge      |
| 💾 [Apex Basics & Database](#ApexTest)   | Need to make the class challenges again     | 4 Hands-on Challenge      |

</div>
<div align="center">
    <img src="https://media.giphy.com/media/citBl9yPwnUOs/giphy.gif" width=250>

<h2 align="center"> <img src="https://media.giphy.com/media/UIDv5ufQkpYULONT55/giphy.gif" width=50 />  Next Trails <img src="https://media.giphy.com/media/UIDv5ufQkpYULONT55/giphy.gif" width=50 /> </h2>


| Trail      | Description | Questions and Challenges     |
| :---        |    :----:   |          ---: |
| 🧍[Apex Coding for Admins](https://trailhead.salesforce.com/en/content/learn/projects/quick-start-apex-coding-for-admins)     | Study about SOQL, FOR Loop and Developer Console       | 7 topics about   |


</div>
<br>
<br>
<div align="center">
<h2><img src="https://media.giphy.com/media/11kEuHSQAXXiGQ/giphy.gif" width=50/> Apex Basics & Database <img src="https://media.giphy.com/media/11kEuHSQAXXiGQ/giphy.gif" width=50/></h2> <a name="Apex"></a>
<img src="https://media.giphy.com/media/Dh5q0sShxgp13DwrvG/giphy.gif" width=400 />

**|** <img src="./assets/trailhead.png" width=20/> [Trailhead Module](https://trailhead.salesforce.com/content/learn/modules/apex_database) <img src="./assets/trailhead.png" width=20/> **|**
</div>


<br>

- [x] 1. **Create an Apex class with a method that returns a list of strings**

*Create an Apex class with a method that returns a list of formatted strings. The length of the list is determined by an integer parameter. You can also use an array if you prefer, but these instructions assume you’re using a list.*

<details><summary>👣Steps👣</summary>

>   The Apex class must be called StringArrayTest and be in the public scope
-       The Apex class must have a public static method called generateStringArray
-       The generateStringArray method must return a list of strings
-       The method must accept an incoming Integer as a parameter, which will be used to determine the number of returned strings
-       The method must return a list of strings. Each element in the list must have the format Test n, where n is the index of the current string in the list.
-       For example, if the input is 3, then the output should be ['Test 0', 'Test 1', 'Test 2']. Remember that in Apex, the index position of the first element in a list is always 0.
</details>

- ⭐ [Class of the Challenge](./force-app/main/default/classes/Apex-BasicsAndDatabase/StringArrayTest.cls) ⭐
- ✔️ [Guided Class of the Trail](./force-app/main/default/classes/Apex-BasicsAndDatabase/EmailManager.cls) ✔️

- [x] 2. **Use sObjects**

*Explaining about sObjects in Salesforce, showing some instances and explaining about generic SOjbects to specific Sobjects*

<details><summary>❔ Questions ❔</summary>

- 1. Describe the relationship between sObjects and Salesforce records.
    A: **(C)** - Every record in Salesforce is natively represented as an sObject in Apex

- 2. You can obtain an instance of an sObject, such as Account, in one of the following ways:
    A: **(B)** - Either by creating the sObject or by retrieving a persistent record from Salesforce using SOQL.

- 3. Which of the following is correct about a generic sObject variable?
    A: **(A)** - Generic sObject variable can be assigned to any specific sObject, standard or custom. Such as Accont or Book__c

</details>
<br>

- [x] 3. **Create a method for inserting accounts.**

*To pass this challenge, create an Apex class that inserts a new account named after an incoming parameter. If the account is successfully inserted, the method should return the account record. If a DML exception occurs, the method should return null.*

<details><summary>👣Steps👣</summary>

>   The Apex class must be called AccountHandler and be in the public scope
-       The Apex class must have a public static method called insertNewAccount
-       The method must accept an incoming string as a parameter, which will be used to create the Account name
-       The method must insert the account into the system and then return the record
-       The method must also accept an empty string, catch the failed DML and then return null.
</details>
<br>

❌**I completed the challenge, but in another Org, I will remake this challenge later**❌

<br>

- [x] 4 - **Create an Apex class that returns contacts based on incoming parameters.**

*Create a class that has a method accepting two strings. The method searches for contacts that have a last name matching the first string and a mailing postal code matching the second. It gets the ID and Name of those contacts and returns them.*

<details><summary>👣Steps👣</summary>

>   The Apex class must be called ContactSearch and be in the public scope
-       The Apex class must have a public static method called searchForContacts
-       The method must accept two incoming strings as parameters
-       The method should then find any contact that has a last name matching the first string, and mailing postal code (API name: MailingPostalCode) matching the second string
-       The method should finally return a list of Contact records of type List that includes the ID and Name fields
</details>
<br>

❌**I completed the challenge, but in another Org, I will remake this challenge later**❌
<br>

- [x] 5 - **Create an Apex class that returns both contacts and leads based on a parameter.**

*To pass this challenge, create an Apex class that returns both contacts and leads that have first or last name matching the incoming parameter.*

<details><summary>👣Steps👣</summary>

>   The Apex class must be called ContactAndLeadSearch and be in the public scope
-       The Apex class must have a public static method called searchContactsAndLeads
-       The method must accept an incoming string as a parameter
-       The method should then find any contact or lead that matches the string as part of either the first or last name
-       The method should finally use a return type of List<List< sObject>>
-       NOTE: Because SOSL indexes data for searching, you must create a Contact record and Lead record before checking this challenge. Both records must have the last name Smith. The challenge uses these records for the SOSL search
</details>
<br>

❌**I completed the challenge, but in another Org, I will remake this challenge later**❌


---

<div align="center">
<h3><img src="https://media.giphy.com/media/VhWFMl9M6zKpqB2dkc/giphy.gif" width=30 /> Quick Start: Apex <img src="https://media.giphy.com/media/VhWFMl9M6zKpqB2dkc/giphy.gif" width=30 /></h3>  <a name="ApexQuickStart"></a>
<img src="https://media.giphy.com/media/OOZLyBA9Euq2I/giphy.gif" width=300 />

**|** <img src="./assets/trailhead.png" width=20/> [Trailhead Module](https://trailhead.salesforce.com/en/content/learn/projects/quickstart-apex) <img src="./assets/trailhead.png" width=20/> **|**
</div>

<br>

- [x] 1. **Create an Apex Class**

*Explaining about an Class in Apex and his similarity with Java and C#*

- [x] 2. **Add a Method to the Class**

*Created a method in the Class Older Account utility named updateOlderAccounts that gets the first five Account records ordered by the created date, and update with a description "Heritage Account"*

- [x] 3. **Invoke and Test the Code**

*Explaining about to Execute the method in the Open Execute Anonymous Window*

- [x] 4. **Verify the Updated Accounts**

*After the code executed in the Developer Console, we will see the result in Salesforce*

- ✔️[Class of the Guided Trail](./force-app/main/default/classes/Apex-QuickStart/OlderAccountsUtility.cls) ✔️


---
<div align="center">
<h3><img src="https://media.giphy.com/media/hV1dkT2u1gqTUpKdKy/giphy.gif" width=30 /> Apex Test <img src="https://media.giphy.com/media/hV1dkT2u1gqTUpKdKy/giphy.gif" width=30 /></h3>  <a name="ApexTest"></a>
<img src="https://media.giphy.com/media/7MZ0v9KynmiSA/giphy.gif" width=300 />

**|** <img src="./assets/trailhead.png" width=20/> [Trailhead Module](https://trailhead.salesforce.com/en/content/learn/modules/apex_testing) <img src="./assets/trailhead.png" width=20/> **|**

</div>

<br>

- [x] 1. **Create a Unit Test for a Simple Apex Class**

*Create and install a simple Apex class to test if a date is within a proper range, and if not, returns a date that occurs at the end of the month within the range. You'll copy the code for the class from GitHub. Then write unit tests that achieve 100% code coverage.*
<details><summary>👣Steps👣</summary>

> Create an Apex class:
-       Name: VerifyDate
-       Code: Copy from GitHub
-       Place the unit tests in a separate test class:
-       Name: TestVerifyDate
-       Goal: 100% code coverage
-       Run your test class at least once

</details>

- ⭐ [Class of the Challenge](./force-app/main/default/classes/Apex-Test/VerifyDate.cls) ⭐
- 🚧 [Test Class of the Challenge](./force-app/main/default/classes/Apex-Test/TestVerifyDate.cls) 🚧

---

- [ ] 2. **Create a Unit Test for a Simple Apex Trigger**

*Create and install a simple Apex trigger which blocks inserts and updates to any contact with a last name of 'INVALIDNAME'. You'll copy the code for the class from GitHub. Then write unit tests that achieve 100% code coverage.*
<details><summary>👣Steps👣</summary>

>Create an Apex trigger on the Contact object
*       Name: RestrictContactByName
-       Copy from GitHub
-       Place the unit tests in a separate test class
-       Name: TestRestrictContactByName
-       Goal: 100% test coverage
-       Run your test class at least once

</details>

---
<div align="center">
<h3><img src="https://media.giphy.com/media/loHP3BaKgMhYaXWbHu/giphy.gif" width=30 /> Quick Start: Lightning Web Component <img src="https://media.giphy.com/media/loHP3BaKgMhYaXWbHu/giphy.gif" width=30 /></h3>  <a name="ApexTest"></a>
<img src="https://media.giphy.com/media/l41YrkD7I6LnwFd4Y/giphy.gif" width=300 />

**|** <img src="./assets/trailhead.png" width=20/> [Trailhead Module](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components) <img src="./assets/trailhead.png" width=20/> **|**

</div>

<br>

- [x] 1. Create a Hello World Lightning Web Component


- ✔️ [Guided Component of the Trail](./force-app/main/default/lwc/helloWorld/) ✔️