# Mobile App Automation with Robot Framework

This project automates login and logout functionalities for the **Sauce Demo Android App** using **Robot Framework** and **Appium**.
Run Result Evidence: https://drive.google.com/file/d/14S9h3g1iFGVP-d97nWTz3SLkffSbH-GX/view?usp=sharing

## 📱 Features
- Positive and negative test cases for login
- Logout validation
- Structured, maintainable Robot Framework setup

## 🛠 Setup

1️⃣ Install Python dependencies:
```bash
pip install -r requirements.txt

2️⃣ Install Appium:
npm install -g appium

3️⃣ Start Appium server:
appium

4️⃣ Connect Android Emulator or Device (ensure adb devices shows your emulator)

🚀 Run Tests
robot -d Results tests/login_logout_test.robot
Test report will be saved in the Results/ folder.

📂 Project Structure
resources/ → reusable keyword definitions
variables/ → app constants and locators
tests/ → test suite files
Results/ → output reports

```
