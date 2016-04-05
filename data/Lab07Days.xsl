<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>ACIT 4B Schedule</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left">Timeslot</th>
                        <th style="text-align:left">Monday</th>
                        <th style="text-align:left">Tuesday</th>
                        <th style="text-align:left">Wednesday</th>
                        <th style="text-align:left">Thursday</th>
                        <th style="text-align:left">Friday</th>
                    </tr>
                    <xsl:for-each select="Master/Timeslots/TimeBookings">
                        <tr>
                            <td bgcolor="#9acd32">
                                <xsl:value-of select="Timeslot"/>
                            </td>
                            <td>
                                <xsl:for-each select="TimeBooking">
                                    <xsl:if test="Day='Monday'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="TimeBooking">
                                    <xsl:if test="Day='Tuesday'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="TimeBooking">
                                    <xsl:if test="Day='Wednesday'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="TimeBooking">
                                    <xsl:if test="Day='Thursday'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="TimeBooking">
                                    <xsl:if test="Day='Friday'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
