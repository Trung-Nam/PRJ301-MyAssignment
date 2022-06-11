<%-- 
    Document   : Schedule
    Created on : Jun 11, 2022, 9:15:37 PM
    Author     : ASUS G731G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
          <link rel="stylesheet" href="./assets/css/schedule.css">
    </head>
    <body>
        <form action="">
            <div class="campus">Campus:
                <select name="" id="">
                    <option value="FU HL">FU-Hòa Lạc</option>
                    <option value="FU HCM">FU-Hồ Chí Minh</option>
                    <option value="FU DN">FU-Đà Nẵng</option>
                    <option value="FU CT">FU-Cần Thơ</option>
                    <option value="FU QN">FU-Quy Nhơn</option>
                </select>
            </div>
            <div class="Lecturer">Lecturer:
                <input type="text" value="sonnt5">
                <input type="submit" value="View">
            </div>

            <table style="width:100%" id="schedule">
                <tr>
                    <th rowspan="2">
                        YEAR :
                        <select name="">
                            <option value="">
                                2021
                            </option>
                            <option value="">
                                2022
                            </option>
                        </select>
                        <br>
                        WEEK: <select name="" id="">
                            <option value="">17/01 To 23/01</option>
                            <option value="">24/01 To 30/01</option>
                        </select>
                    </th>
                    <th>Monday</th>
                    <th>Tuesday</th>
                    <th>Wednesday</th>
                    <th>Thursday</th>
                    <th>Friday</th>
                    <th>Saturday</th>
                    <th>Sunday</th>
                </tr>
                <tr class="day">
                    <td>Ngày</td>
                    <td>Ngày</td>
                    <td>Ngày</td>
                    <td>Ngày</td>
                    <td>Ngày</td>
                    <td>Ngày</td>
                    <td>Ngày</td>
                </tr>
                <tbody>
                    <tr class="slot1">
                        <td>Slot 1</td>
                        <td>Jackson</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                    </tr>

                    <tr class="slot2">
                        <td>Slot 2</td>
                        <td>Jackson</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                    </tr>

                    <tr class="slot3">
                        <td>Slot 3</td>
                        <td>Jackson</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                    </tr>

                    <tr class="slot4">
                        <td>Slot 4</td>
                        <td>Jackson</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                    </tr>

                    <tr class="slot5">
                        <td>Slot 5</td>
                        <td>Jackson</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                    </tr>

                    <tr class="slot6">
                        <td>Slot 6</td>
                        <td>Jackson</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                    </tr>

                    <tr class="slot7">
                        <td>Slot 7</td>
                        <td>Jackson</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                    </tr>

                    <tr class="slot8">
                        <td>Slot 8</td>
                        <td>Jackson</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                        <td>94</td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
