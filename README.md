# Trailhead Challenges
> Personal org for my Trailhead Challenges, both admin path and dev path, I will do Hands-on Challenge and questions to further guide for me.

<div align="center">
<img align="center" src="https://media.giphy.com/media/sAq99u03v7IRHlN1dj/giphy.gif" width=300>


<h2> <img src="https://media.giphy.com/media/PijzuUzUhm7hcWinGn/giphy.gif" width=50 /> Completed <img src="https://media.giphy.com/media/PijzuUzUhm7hcWinGn/giphy.gif" width=50 /></h2> 

| Trail      | Description | Difficulty     |
| :---        |    :----:   |          ---: |
| [Apex Basics & Database](#Apex)     | Trail to study about basics concepts of the language, SOQL and SOSL      | I will write later   |
| [Quick Start - Apex](#ApexQuickStart)     | Trail to write my a simple class update of Accounts      | A guided trail to Create a Class   |


</div>
<br>

<div align="center">


<img src="https://media.giphy.com/media/1GEATImIxEXVR79Dhk/giphy.gif" width=400>


<h2> <img src="https://media.giphy.com/media/BaBXfoDOvq6tRyK2L7/giphy.gif" width=30 /> In Progress <img src="https://media.giphy.com/media/BaBXfoDOvq6tRyK2L7/giphy.gif" width=30 /></h2>

| Trail      | Description | Questions and Challenges     |
| :---        |    :----:   |          ---: |
| 🚧[Apex Test](#ApexTest)   | Trail about Test class in Salesforce     | 3 Hands-on Challenge      |

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
<h2><img src="https://media.giphy.com/media/11kEuHSQAXXiGQ/giphy.gif" width=50/> Apex <img src="https://media.giphy.com/media/11kEuHSQAXXiGQ/giphy.gif" width=50/></h2> <a name="Apex"></a>
<img src="https://media.giphy.com/media/Dh5q0sShxgp13DwrvG/giphy.gif" width=400 />
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

---

<div align="center">
<h3><img src="https://media.giphy.com/media/VhWFMl9M6zKpqB2dkc/giphy.gif" width=30 /> Quick Start: Apex <img src="https://media.giphy.com/media/VhWFMl9M6zKpqB2dkc/giphy.gif" width=30 /></h3>  <a name="ApexQuickStart"></a>
<img src="https://media.giphy.com/media/OOZLyBA9Euq2I/giphy.gif" width=300 />
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

- ⭐ [Class of the Challenge](./force-app/main/default/classes/ApexTest/VerifyDate.cls) ⭐
- 🚧 [Test Class of the Challenge](./force-app/main/default/classes/ApexTest/TestVerifyDate.cls) 🚧

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