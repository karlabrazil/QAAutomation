#INTRODUCTION
This is a readme file for the QA Automation Exam for Snapmart created by Karla Mae Brazil. Please read this file first before executing the script.
The main automation file uses Robot Framework which has the advantage of creating scripts that are fast and easily understood by all.

PRE-REQUISITES:
- Python 
- Setuptools
- Java JDK
- Desired IDE but for this project, I have used Pycharm.
- Project Interpreter which would have the libraries for Selenium and Robot Framework
- Plugin for Robot Framework Support
- Chromedriver


I. SETTING UP PYTHON AND IDE 
1. Download python - 3.8.3. Choose executable installer.
https://www.python.org/downloads/release/python-383/

2. Ensure that it is in environment variables:
setx PATH "%PATH%;C:\Program Files\Python38"
setx PATH "%PATH%;C:\Program Files\Python38\Scripts"

3.Close current cmd window. Open another one then go to path and install wxPython
pip install -U wxPython --user

4.Create dist folder in C

5. Download setuptools and copy to dist folder.
https://pypi.org/project/setuptools/#files

6. Go to dist and extract setuptools. Recommended is 7zip.

7. Type python setup.py install --user

8. In cmd, change directory to pip executor folder (Python scripts folder)
Input the following commands in cmd one by one:

pip install robotframework
pip install robotframework-selenium2library
pip install selenium  
pip install decorator  
pip install docutils  
pip install xlrd  
pip install xlwt  
pip install xlutils

9. Download your preferred IDE but for my side, I used Pycharm.
Note: You may need java jdk for Pycharm to run. If you get an error, please do the following:
In environment variable:
- Set JAVA HOME environment variable to path to JAVA SDK
- In path, set to: %JAVA_HOME%\bin

10. Under File > Settings, click Plugins.

11. Click Browse Repositories and search for Intellibot. This is a smart editing feature for Robot Framework. Also add Robot Framework Support and Add Robot Framework Test Case

12. Now go to Project Interpreter and ensure that you have packages or add packages needed for your libraries such as SeleniumLibrary.

13. Download chromedriver to use in executing the scripts. Configure with the IDE.

II. FOLDER STRUCTURE
The project can be downloaded via the Snapmart.zip file. Extract the file first then open as a new project.
a. Resources.robot - this holds commonly used keywords that is used in our automation script file.
b. TestCases - this directory holds the following:
  b.1 AutomationExam.robot - this is the main automation file that should be executed
  b.2 log.html - contains the log files in every run
  b.3 output.xml - contains the output file that can be configured
  b.4 report.html - contains the report file for the execution output
c. venv - this directory contains libraries and python packages
  
III. RUNNING THE AUTOMATION SCRIPT
The automation script file follows a sequence of customer logging in to purchase an order of Eggfruit Juice using his/her wallet.

The main file is under TestCases > Automationexam.robot and uses keywords from the resources.robot file.

To run the script in command line, please follow these steps:
1. Open command line and place the path of the project using cd: cd *test cases path*
ie. cd C:\Users\PC\PycharmProjects\Snapmart\TestCases

2. After that, input: python -m robot AutomationExam.robot. Script should now be executed in Chrome.

3. Once the test has completed, the HTML report file can be found in the reports.html which will be displayed in the Command Line.
ie. C:\Users\PC\PycharmProjects\Snapmart\TestCases\report.html

4. In the report, the test will show keywords along with page screenshots. Some of these screenshots are under the keywords so there is a need to expand in order to check the screenshot such as in Login, Delivery Details, etc.

IV. SAMPLE RESOURCES FOR AUTOMATION 
Included in this github repository are the sample resources such as:
- sample report file
- sample screenshot
- sample video of automation file being executed

V. TROUBLESHOOTING
In case an error occurs or the test is not able to run, feel free to contact me at karlamaec.brazil@gmail.com.
