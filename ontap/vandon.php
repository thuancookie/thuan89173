<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Vận đơn</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>

<body>
    <?php
  require "condb.php";
  ?>
    <nav class="navbar navbar-expand-sm navbar-light bg-light" style="height: 70px">
        <div class="container-fluid" style="height: 100%">
            <!-- logo -->
            <a class="navbar-brand" style="height: 100%" href="index.php">
                <img style="height: 100%"
                    src="https://upload.wikimedia.org/wikipedia/vi/thumb/1/11/Bi%E1%BB%83u_tr%C6%B0ng_Tr%C6%B0%E1%BB%9Dng_%C4%91%E1%BA%A1i_h%E1%BB%8Dc_H%C3%A0ng_h%E1%BA%A3i_Vi%E1%BB%87t_Nam.svg/1200px-Bi%E1%BB%83u_tr%C6%B0ng_Tr%C6%B0%E1%BB%9Dng_%C4%91%E1%BA%A1i_h%E1%BB%8Dc_H%C3%A0ng_h%E1%BA%A3i_Vi%E1%BB%87t_Nam.svg.png"
                    alt="" />
            </a>
            <!-- main menu -->
            <div class="collapse navbar-collapse" id="mynavbar">
                <ul class="navbar-nav m-auto">
                    <li class="nav-item">
                        <a class="nav-link text-hover active-now" href="index.php">Câu 1</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-hover" href="vandon.php">Vận đơn</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-hover" href="login.php">Câu 4</a>
                    </li>
                </ul>

                <!-- phải -->
                <form class="d-flex"></form>
            </div>
        </div>
    </nav>
    <div class="container" style="min-height: 100vh">
        <h2>Danh sách vận đơn</h2>
        <div class="d-flex my-3">
            <input class="form-control me-2 w-25" type="text" placeholder="Tìm kiếm" />
            <button class="btn btn-outline-danger" type="button">
                <i class="fas fa-search"></i>
            </button>
        </div>

        <div class="table-responsive">
            <table class="table table-striped table-dark table-hover">
                <thead>
                    <tr>
                        <th scope="col">Tên Nhân Viên</th>
                        <th scope="col">Tên Người Nhận</th>
                        <th scope="col">Tên Hàng Hóa</th>
                        <th scope="col">Số Lượng</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
            
            $stmt = $conn->prepare("SELECT hovaten,nguoinhan FROM nhanvien INNER JOIN vandon ON nhanvien.nhanvien_id = vandon.nhanvien_id ");
            
            $stmt->setFetchMode(PDO::FETCH_ASSOC);
            if ($stmt->execute()) {
                while($row = $stmt->fetch()){
                    
                    
        ?>
                    <tr class="">
                        <td><?php   echo $row["hovaten"];  ?> </td>
                        <td><?php   echo $row["nguoinhan"]; }
                        } else {
                            echo "Truy vấn thất bại";
                        }?></td>
                        <?php
                        $stmt = $conn->prepare("SELECT ten,soluong FROM hanghoa INNER JOIN chitietvandon ON hanghoa.hanghoa_id = chitietvandon.hanghoa_id ");
                        if ($stmt->execute()) {
                            while($row= $stmt->fetch()){
                        ?>

                        <td><?php echo $row["ten"]; ?> </td>
                        <td><?php echo $row["soluong"]; }
                        } else {
                            echo "Truy vấn thất bại";
                        }?></td>

                        <td>
                            <button class="btn btn-info"><a class="text-decoration-none text-dark" href="taovd.php">
                                    tạo
                                    mới</a></button>
                        </td>
                    </tr>


                </tbody>

            </table>
        </div>
    </div>
</body>
<footer class="d-flex justify-content-center align-items-center bg-secondary text-light" style="height: 130px">89173 -
    Lê Thanh
    Thuận - CNT61DH
</footer>

</html>