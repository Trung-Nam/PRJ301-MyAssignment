<%-- 
    Document   : Schedule
    Created on : Jun 11, 2022, 9:15:37 PM
    Author     : ASUS G731G
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Schedule</title>
    <link href="./assets/css/schedule.css" rel="stylesheet" type="text/css"/>
</head>

<body>
    <form action="" method="POST">
        <div class="container">
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
                <input type="text" value="${sessionScope.userLogged.getDislayname()}">
                <input type="submit" value="View" class="view-btn">
            </div>

            <div class="timetable-img text-center">
                <img src="img/content/timetable.png" alt="">
            </div>
            <div class="table-responsive">
                <table class="table table-bordered text-center">
                    <thead>
                        <tr>
                            <th rowspan="2">
                                YEAR :
                                <select name="year" class="year">
                                    <option value="">
                                        2021
                                    </option>
                                    <option value="">
                                        2022
                                    </option>
                                </select>
                                <br>
                                WEEK: <select name="week" class="week">
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
                        <tr class="bg-light-gray">
                            <th class="text-uppercase">17/01</th>
                            <th class="text-uppercase">18/01</th>
                            <th class="text-uppercase">19/01</th>
                            <th class="text-uppercase">20/01</th>
                            <th class="text-uppercase">21/01</th>
                            <th class="text-uppercase">22/01</th>
                            <th class="text-uppercase">23/01</th>
                        </tr>

                    </thead>
                    <tbody>
                        <tr>
                            <td class="align-middle">Slot 1</td>
                            <td>
                                <a href=""
                                    class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16 xs-font-size13">Dance</a>
                                <div class="margin-10px-top font-size14">7:30-9:00</div>
                                <div class="font-size13 text-light-gray">Ivana Wong</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Yoga</a>
                                <div class="margin-10px-top font-size14">9:00-10:00</div>
                                <div class="font-size13 text-light-gray">Marta Healy</div>
                            </td>

                            <td>
                                <a href=""
                                    class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Music</a>
                                <div class="margin-10px-top font-size14">9:00-10:00</div>
                                <div class="font-size13 text-light-gray">Ivana Wong</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Dance</a>
                                <div class="margin-10px-top font-size14">9:00-10:00</div>
                                <div class="font-size13 text-light-gray">Ivana Wong</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-purple padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Art</a>
                                <div class="margin-10px-top font-size14">9:00-10:00</div>
                                <div class="font-size13 text-light-gray">Kate Alley</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">English</a>
                                <div class="margin-10px-top font-size14">9:00-10:00</div>
                                <div class="font-size13 text-light-gray">James Smith</div>
                            </td>
                            <td></td>
                        </tr>

                        <tr>
                            <td class="align-middle">Slot 2</td>
                            <td>
                                <a href=""
                                    class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Music</a>
                                <div class="margin-10px-top font-size14">10:00-11:00</div>
                                <div class="font-size13 text-light-gray">Ivana Wong</div>
                            </td>
                            <td class="bg-light-gray">

                            </td>
                            <td>
                                <a href=""
                                    class="bg-purple padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Art</a>
                                <div class="margin-10px-top font-size14">10:00-11:00</div>
                                <div class="font-size13 text-light-gray">Kate Alley</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Yoga</a>
                                <div class="margin-10px-top font-size14">10:00-11:00</div>
                                <div class="font-size13 text-light-gray">Marta Healy</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">English</a>
                                <div class="margin-10px-top font-size14">10:00-11:00</div>
                                <div class="font-size13 text-light-gray">James Smith</div>
                            </td>
                            <td class="bg-light-gray">
                            </td>
                            <td></td>
                        </tr>

                        <tr>
                            <td class="align-middle">Slot 3</td>
                            <td>
                                <a href=""
                                    class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Break</a href="">
                                <div class="margin-10px-top font-size14">11:00-12:00</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Break</a href="">
                                <div class="margin-10px-top font-size14">11:00-12:00</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Break</a href="">
                                <div class="margin-10px-top font-size14">11:00-12:00</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Break</a href="">
                                <div class="margin-10px-top font-size14">11:00-12:00</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Break</a href="">
                                <div class="margin-10px-top font-size14">11:00-12:00</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-lightred padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Break</a href="">
                                <div class="margin-10px-top font-size14">11:00-12:00</div>
                            </td>
                            <td></td>
                        </tr>

                        <tr>
                            <td class="align-middle">Slot 4</td>
                            <td class="bg-light-gray">

                            </td>
                            <td>
                                <a href=""
                                    class="bg-purple padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Art</a href="">
                                <div class="margin-10px-top font-size14">12:00-1:00</div>
                                <div class="font-size13 text-light-gray">Kate Alley</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-sky padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Dance</a href="">
                                <div class="margin-10px-top font-size14">12:00-1:00</div>
                                <div class="font-size13 text-light-gray">Ivana Wong</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Music</a href="">
                                <div class="margin-10px-top font-size14">12:00-1:00</div>
                                <div class="font-size13 text-light-gray">Ivana Wong</div>
                            </td>
                            <td class="bg-light-gray">

                            </td>
                            <td>
                                <a href=""
                                    class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Yoga</a href="">
                                <div class="margin-10px-top font-size14">12:00-1:00</div>
                                <div class="font-size13 text-light-gray">Marta Healy</div>
                            </td>
                            <td></td>
                        </tr>

                        <tr>
                            <td class="align-middle">Slot 5</td>
                            <td>
                                <a href=""
                                    class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">English</a href="">
                                <div class="margin-10px-top font-size14">1:00-2:00</div>
                                <div class="font-size13 text-light-gray">James Smith</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Music</a href="">
                                <div class="margin-10px-top font-size14">1:00-2:00</div>
                                <div class="font-size13 text-light-gray">Ivana Wong</div>
                            </td>
                            <td class="bg-light-gray">

                            </td>
                            <td>
                                <a href=""
                                    class="bg-pink padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">English</a href="">
                                <div class="margin-10px-top font-size14">1:00-2:00</div>
                                <div class="font-size13 text-light-gray">James Smith</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-green padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Yoga</a href="">
                                <div class="margin-10px-top font-size14">1:00-2:00</div>
                                <div class="font-size13 text-light-gray">Marta Healy</div>
                            </td>
                            <td>
                                <a href=""
                                    class="bg-yellow padding-5px-tb padding-15px-lr border-radius-5 margin-10px-bottom text-white font-size16  xs-font-size13">Music</a href="">
                                <div class="margin-10px-top font-size14">1:00-2:00</div>
                                <div class="font-size13 text-light-gray">Ivana Wong</div>
                            </td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>

</html>