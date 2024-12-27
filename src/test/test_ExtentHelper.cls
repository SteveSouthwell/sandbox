 
 /*------------------------------------------------------------------------
    File        : test_ExtentHelper
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : S.E. Southwell - Progress
    Created     : Thu Dec 26 11:21:25 CST 2024
    Notes       : In order to use this effectively, set the extent randomly within the 
                    called class to a sufficiently high number that you can get good
                    tests.
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING test.Steve FROM PROPATH.
USING OpenEdge.Core.Assert FROM PROPATH.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS src.test.test_ExtentHelper:
    @Test.
    METHOD PUBLIC VOID testGetExtent1().
        DEFINE VARIABLE iCount AS INTEGER NO-UNDO.
        DEFINE VARIABLE oSteve AS Steve NO-UNDO.
        DO iCount = 1 TO 1000:
            oSteve = NEW Steve().
            Assert:Equals(EXTENT(oSteve:Children), ExtentHelper:GetExtent(oSteve,"Children")).
            DELETE OBJECT oSteve.
        END.
        MESSAGE "iCount" iCount "in" ETIME.
    END METHOD.
   
    @Test.
    METHOD PUBLIC VOID testGetExtent2().
        DEFINE VARIABLE oSteve AS Steve NO-UNDO.
        oSteve = NEW Steve().
        Assert:Equals(EXTENT(oSteve:cars), ExtentHelper:GetExtent(oSteve,"cars")).
        DELETE OBJECT oSteve.

    END METHOD.
END CLASS.