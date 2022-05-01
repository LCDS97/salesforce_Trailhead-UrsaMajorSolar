# Trailhead Challenges
> Personal org for my Trailhead Challenges, both admin path and dev path, I will do Hands-on Challenge and questions to further guide for me.

<div align="center">
<img align="center" src="https://media.giphy.com/media/sAq99u03v7IRHlN1dj/giphy.gif" width=300>

## :file_folder: Completed  ✔️


| Trail      | Description | Questions and Challenges     |
| :---        |    :----:   |          ---: |
| ⚙️[Apex](#Apex)     | Trail to study about basics concepts of the language       | I will write later   |

</div>
<br>

<div align="center">

## In Progress

<img src="https://media.giphy.com/media/1GEATImIxEXVR79Dhk/giphy.gif" width=400>



| Trail      | Description | Questions and Challenges     |
| :---        |    :----:   |          ---: |
| 🚧[Apex Test](#ApexTest)   | Trail about Test class in Salesforce     | 3 Hands-on Challenge      |

</div>
<div align="center">
    <img src="https://media.giphy.com/media/citBl9yPwnUOs/giphy.gif" width=250>

## 🚩 Next Trails


| Trail      | Description | Questions and Challenges     |
| :---        |    :----:   |          ---: |
| 🧍[Apex Coding for Admins](https://trailhead.salesforce.com/en/content/learn/projects/quick-start-apex-coding-for-admins)     | Study about SOQL, FOR Loop and Developer Console       | 7 topics about   |


</div>
<br>
<br>
<br>
<br>
<br>

<h2 align="center"> ⚙️ Apex </h2> <a name="Apex"></a>

---

<h3 align="center">Apex Test</h3>  <a name="ApexTest"></a>

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