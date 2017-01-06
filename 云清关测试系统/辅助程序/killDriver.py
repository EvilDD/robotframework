import os
killChrome = "taskkill /im chromedriver.exe /f"
killIe = "taskkill /im iedriverserver.exe /f"
os.system(killChrome + '&' + killIe)
