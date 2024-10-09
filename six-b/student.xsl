<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Information - Roll No: 22DX10</title>
                <link rel="stylesheet" type="text/css" href="styless.css"/>
            </head>
            <body>
                <h1>Student Information</h1>
                <xsl:apply-templates select="students/student[rollno='22DX10']"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="student">
        <div class="student">
            <div><strong>Roll No:</strong> <xsl:value-of select="rollno"/></div>
            <div><strong>Name:</strong> <xsl:value-of select="name"/></div>
            <div><strong>College:</strong> <xsl:value-of select="college"/></div>
            <div><strong>Branch:</strong> <xsl:value-of select="branch"/></div>
            <div><strong>Year of Joining:</strong> <xsl:value-of select="YOJ"/></div>
            <div><strong>Email:</strong> <xsl:value-of select="email"/></div>
        </div>
    </xsl:template>
    
</xsl:stylesheet>