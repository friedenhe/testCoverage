#!/usr/bin/env python
"""
DAFoam run script for the curved cube case
"""

# =================================================================================================
# Imports
# =================================================================================================

class DAFOAM(object):
  
    def __init__(self):
      
        from pyTestRun import pyTestRun

        test = pyTestRun()
        test.init()
        test.run()
        
    def runMe(self):
        a=1
        b=2
        print("what")
      

