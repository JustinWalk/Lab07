<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>ACIT 4B Schedule</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th style="text-align:left"></th>
                        <th style="text-align:left">8:30</th>
                        <th style="text-align:left">9:30</th>
                        <th style="text-align:left">10:30</th>
                        <th style="text-align:left">11:30</th>
                        <th style="text-align:left">12:30</th>
                        <th style="text-align:left">13:30</th>
                        <th style="text-align:left">14:30</th>
                        <th style="text-align:left">15:30</th>
                        <th style="text-align:left">16:30</th>
                    </tr>
                    <xsl:for-each select="Master/Days/DayBookings">
                        <tr>
                            <td bgcolor="#9acd32">
                                <xsl:value-of select="Day"/>
                            </td>
                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='08:30'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='09:30'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='10:30'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='11:30'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='12:30'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='13:30'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='14:30'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='15:30'">
                                        <xsl:value-of select="Course"/><br />
                                        <xsl:value-of select="Room"/><br />
                                        <xsl:value-of select="Activity"/><br />
                                        <xsl:value-of select="Instructor"/>
                                    </xsl:if>
                                </xsl:for-each>
                            </td>

                            <td>
                                <xsl:for-each select="DayBooking">
                                    <xsl:if test="Timeslot='16:30'">
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
