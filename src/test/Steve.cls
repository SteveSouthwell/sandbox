 
 /*------------------------------------------------------------------------
    File        : Steve
    Purpose     : Test class definition to test Jsonifier
    Syntax      : 
    Description : 
    Author(s)   : S.E. Southwell
    Created     : Mon Dec 23 16:17:15 CST 2024
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS test.Steve: 
    DEFINE PUBLIC  PROPERTY FirstName  AS CHARACTER NO-UNDO GET. SET.
    DEFINE PUBLIC  PROPERTY LastName   AS CHARACTER NO-UNDO GET. SET.
    DEFINE PROTECTED PROPERTY MiddleName AS CHARACTER NO-UNDO GET. SET.
    DEFINE PUBLIC  PROPERTY Age        AS INTEGER   NO-UNDO GET. PRIVATE SET.
    DEFINE PUBLIC PROPERTY Children AS CHARACTER EXTENT NO-UNDO GET. PROTECTED SET.
    // To test unfixed extent
    DEFINE PUBLIC PROPERTY Cars     AS CHARACTER EXTENT NO-UNDO GET. PROTECTED SET.
    DEFINE PUBLIC PROPERTY Dates    AS DATE EXTENT 2 NO-UNDO GET. SET.
    
    
    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    CONSTRUCTOR PUBLIC Steve (  ):
        SUPER ().
        ASSIGN
            FirstName = "Steve"
            LastName = "Southwell"
            MiddleName = "E."
            Age = 53.
        EXTENT(Children) = 2.
        Children[1] = "Edwin".
        Children[2] = "Aaron".
        Dates[1] = DATE(8,14,1971).
        Dates[2] = DATE(11,5,1994).
    END CONSTRUCTOR.

END CLASS.