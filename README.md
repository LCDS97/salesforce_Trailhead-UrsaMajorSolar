# Trailhead Challenges
> Personal org for my Trailhead Challenges, both admin path and dev path, I will do Hands-on Challenge and questions to further guide for me.

<div align="center">
<img align="center" src="https://media.giphy.com/media/sAq99u03v7IRHlN1dj/giphy.gif" width=300>


<h2> <img src="https://media.giphy.com/media/PijzuUzUhm7hcWinGn/giphy.gif" width=50 /> Completed <img src="https://media.giphy.com/media/PijzuUzUhm7hcWinGn/giphy.gif" width=50 /></h2> 

| Trail      | Description | Questions and Challenges     |
| :---        |    :----:   |          ---: |
| ⚙️[Apex](#Apex)     | Trail to study about basics concepts of the language       | I will write later   |

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
<br>
<br>
<br>
<div align="center">
<h2><img src="https://media.giphy.com/media/11kEuHSQAXXiGQ/giphy.gif" width=50/> Apex <img src="https://media.giphy.com/media/11kEuHSQAXXiGQ/giphy.gif" width=50/></h2> <a name="Apex"></a>
<img src="https://media.giphy.com/media/Dh5q0sShxgp13DwrvG/giphy.gif" width=400 />
</div>

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

- ⭐ [Class of the Challenge](./force-app/main/default/classes/VerifyDate.cls) ⭐
- 🚧 [Test Class of the Challenge](./force-app/main/default/classes/TestVerifyDate.cls) 🚧

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