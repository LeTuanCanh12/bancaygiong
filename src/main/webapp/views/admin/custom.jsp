<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 1/3/2023
  Time: 11:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Quan ly khach hang</title>
</head>
<body>
<%@include file="header.jsp"%>

<main class="app-content">
    <div class="app-title">
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item active"><a href="#"><b>Danh sách khách hàng</b></a></li>
        </ul>
        <div id="clock"></div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">

                    <div class="row element-button">
                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm" type="button" title="Xóa" onclick="myFunction(this)"><i
                                    class="fas fa-trash-alt"></i> Xóa tất cả </a>
                        </div>
                    </div>
                    <table class="table table-hover table-bordered js-copytextarea" cellpadding="0" cellspacing="0" border="0"
                           id="sampleTable">
                        <thead>

                        <tr>
                            <th width="10"><input type="checkbox" id="all"></th>
                            <th>ID</th>
                            <th width="150">Tên</th>
                            <th width="300">Mật khẩu</th>
                            <th>Email</th>
                            <th>Ngày Tạo</th>
                            <th width="100">Tính năng</th>
                        </tr>

                        </thead>
                        <tbody>
                            <c:forEach items="${custom}" var="o">
                        <tr>
                            <td width="10"><input type="checkbox" name="check1" value="1"></td>
                            <td>${o.user_id}</td>
                            <td>${o.first_name}</td>
                            <td>${o.password} </td>
                            <td>${o.mail}</td>
                            <td>${o.create_date}</td>
                            <td class="table-td-center"><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                                                onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                            </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                                </button>
                            </td>
                        </tr>
                            </c:forEach>
                        <tr>
                            <td width="10"><input type="checkbox" name="check2" value="2"></td>
                            <td>#SX22837</td>
                            <td>Trần Khả Ái</td>
                            <td>6 Nguyễn Lương Bằng, Tân Phú, Quận 7, Hồ Chí Minh</td>
                            <td>22/12/1999</td>

                            <td>0931342432</td>
                            <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa"
                                        onclick="myFunction(this)"><i class="fas fa-trash-alt"></i>
                            </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox" name="check3" value="3"></td>
                            <td>#LO2871</td>
                            <td>Phạm Thu Cúc</td>
                            <td>Số 3 Hòa Bình, Phường 3, Quận 11, Hồ Chí Minh </td>
                            <td>02/06/1998</td>

                            <td>0931491997</td>

                            <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction()"><i
                                    class="fas fa-trash-alt"></i>
                            </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox"></td>
                            <td>#SR28746</td>
                            <td>Trần Anh Khoa</td>
                            <td>19 Đường Nguyễn Hữu Thọ, Tân Hưng, Quận 7, Hồ Chí Minh </td>
                            <td>18/02/1995</td>

                            <td>0916706633</td>

                            <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction()"><i
                                    class="fas fa-trash-alt"></i>
                            </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox"></td>
                            <td>#KJS276</td>
                            <td>Nguyễn Thành Nhân</td>
                            <td>Số 13, Tân Thuận Đông, Quận 7, Hồ Chí Minh </td>
                            <td>10/03/1996</td>

                            <td>0971038066</td>

                            <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction()"><i
                                    class="fas fa-trash-alt"></i>
                            </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox"></td>
                            <td>#BS76228</td>
                            <td>Nguyễn Đặng Trọng Nhân</td>
                            <td>59C Nguyễn Đình Chiểu, Quận 3, Hồ Chí Minh </td>
                            <td>23/07/1996</td>

                            <td>0846881155</td>

                            <td><button class="btn btn-primary btn-sm trash" type="button" title="Xóa" onclick="myFunction()"><i
                                    class="fas fa-trash-alt"></i>
                            </button>
                                <button class="btn btn-primary btn-sm edit" type="button" title="Sửa" id="show-emp"
                                        data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td width="10"><input type="checkbox"></td>
                            <td>#YUI21376</td>
                            <td>Nguyễn Thị Mai</td>
                            <td>Đường Số 3, Tân Tạo A, Bình Tân, Hồ Chí Minh</td>
                            <td>09/12/2000</td>

                            <td>0836333037</td>

                            <td><button class="btn btn-primary btn-sm trash" title="Xóa" onclick="myFunction()"><i
                                    class="fas fa-trash-alt"></i>
                            </button>
                                <button class="btn btn-primary btn-sm edit" title="Sửa" id="show-emp" data-toggle="modal"
                                        data-target="#ModalUP"><i class="fas fa-edit"></i>
                                </button>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>

<!--
MODAL
-->
<div class="modal fade" id="ModalUP" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"
     data-keyboard="false">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">

            <div class="modal-body">
                <div class="row">
                    <div class="form-group  col-md-12">
              <span class="thong-tin-thanh-toan">
                <h5>Chỉnh sửa thông tin nhân viên cơ bản</h5>
              </span>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="control-label">ID khách hàng</label>
                        <input class="form-control" type="text" required value="#CD2187" disabled>
                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label">Họ và tên</label>
                        <input class="form-control" type="text" required value="Lê Tuấn Cảnh">
                    </div>
                    <div class="form-group  col-md-6">
                        <label class="control-label">Số điện thoại</label>
                        <input class="form-control" type="number" required value="09267312388">
                    </div>
                    <div class="form-group col-md-6">
                        <label class="control-label">Địa chỉ email</label>
                        <input class="form-control" type="text" required value="truong.vd2000@gmail.com">
                    </div>
                    <div class="form-group col-md-6">

                    </div>
                    <div class="form-group  col-md-6">

                    </div>
                </div>
                <BR>
                <a href="#" style="    float: right;
        font-weight: 600;
        color: #ea0000;">Chỉnh sửa nâng cao</a>
                <BR>
                <BR>
                <button class="btn btn-save" type="button">Lưu lại</button>
                <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>
                <BR>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<!--
MODAL
-->

<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="src/jquery.table2excel.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
<!-- Data table plugin-->
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">$('#sampleTable').DataTable();</script>
<script>
    function deleteRow(r) {
        var i = r.parentNode.parentNode.rowIndex;
        document.getElementById("myTable").deleteRow(i);
    }
    jQuery(function () {
        jQuery(".trash").click(function () {
            swal({
                title: "Cảnh báo",

                text: "Bạn có chắc chắn là muốn xóa nhân viên này?",
                buttons: ["Hủy bỏ", "Đồng ý"],
            })
                .then((willDelete) => {
                    if (willDelete) {
                        swal("Đã xóa thành công.!", {

                        });
                    }
                });
        });
    });
    oTable = $('#sampleTable').dataTable();
    $('#all').click(function (e) {
        $('#sampleTable tbody :checkbox').prop('checked', $(this).is(':checked'));
        e.stopImmediatePropagation();
    });

    //EXCEL
    // $(document).ready(function () {
    //   $('#').DataTable({

    //     dom: 'Bfrtip',
    //     "buttons": [
    //       'excel'
    //     ]
    //   });
    // });


    //Thời Gian
    function time() {
        var today = new Date();
        var weekday = new Array(7);
        weekday[0] = "Chủ Nhật";
        weekday[1] = "Thứ Hai";
        weekday[2] = "Thứ Ba";
        weekday[3] = "Thứ Tư";
        weekday[4] = "Thứ Năm";
        weekday[5] = "Thứ Sáu";
        weekday[6] = "Thứ Bảy";
        var day = weekday[today.getDay()];
        var dd = today.getDate();
        var mm = today.getMonth() + 1;
        var yyyy = today.getFullYear();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        nowTime = h + " giờ " + m + " phút " + s + " giây";
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        today = day + ', ' + dd + '/' + mm + '/' + yyyy;
        tmp = '<span class="date"> ' + today + ' - ' + nowTime +
            '</span>';
        document.getElementById("clock").innerHTML = tmp;
        clocktime = setTimeout("time()", "1000", "Javascript");

        function checkTime(i) {
            if (i < 10) {
                i = "0" + i;
            }
            return i;
        }
    }
    //In dữ liệu
    var myApp = new function () {
        this.printTable = function () {
            var tab = document.getElementById('sampleTable');
            var win = window.open('', '', 'height=700,width=700');
            win.document.write(tab.outerHTML);
            win.document.close();
            win.print();
        }
    }
    //     //Sao chép dữ liệu
    //     var copyTextareaBtn = document.querySelector('.js-textareacopybtn');

    // copyTextareaBtn.addEventListener('click', function(event) {
    //   var copyTextarea = document.querySelector('.js-copytextarea');
    //   copyTextarea.focus();
    //   copyTextarea.select();

    //   try {
    //     var successful = document.execCommand('copy');
    //     var msg = successful ? 'successful' : 'unsuccessful';
    //     console.log('Copying text command was ' + msg);
    //   } catch (err) {
    //     console.log('Oops, unable to copy');
    //   }
    // });


    //Modal
    $("#show-emp").on("click", function () {
        $("#ModalUP").modal({ backdrop: false, keyboard: false })
    });
</script>

</body>
</html>
