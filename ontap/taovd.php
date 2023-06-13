<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tạo vận đơn</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>

<body>
    <?php
  require "condb.php";
  ?>
    <div class="container" style="min-height: 100vh">
        <h2>Tạo mới vận đơn</h2>
        <form class="mb-3 w-50" action="" method="post">
            <label for="" class="form-label">Tên nhân viên</label>
            <input type="text" class="form-control" name="txtTenNhanVien" id="">
            <label for="" class="form-label">Tên người nhận</label>
            <input type="text" class="form-control" name="txtTenNguoiNhan" id="">
            <label for="" class="form-label">Tên hàng hóa</label>
            <input type="text" class="form-control" name="txtTenHangHoa" id="">
            <label for="" class="form-label">Số lượng</label>
            <input type="text" class="form-control" name="txtSoLuong" id=""><br>
            <button class="btn btn-warning" type="submit" name="btnTaoVanDon">Tạo vận đơn</button>
        </form>
        <a href="vandon.php">Quay lai</a>
    </div>
    <br>
    <?php
        if (isset($_POST["btnTaoVanDon"])) {
            $nv = $_POST["txtTenNhanVien"];
            $nn = $_POST["txtTenNguoiNhan"];
            $hh = $_POST["txtTenHangHoa"];
            $sl = $_POST["txtSoLuong"];

            $stmt = $conn->prepare("INSERT INTO nhanvien (hovaten)
            VALUES (?)");
            $stmt->bindParam(1,$nv);
            if ($stmt->execute() ) {
                echo "Tạo thành công! ";
            } else {
                echo "Tạo không thành công!";
            }
            
            $stid = $conn->prepare("SELECT nhanvien_id FROM nhanvien WHERE hovaten = '$nv'");
            $stid->setFetchMode(PDO::FETCH_ASSOC);
            if ($stid->execute()) {
                while ($row = $stid->fetch()) {
                    $nvid = $row["nhanvien_id"];
                    echo $nvid;
                }
                
            }

            $stmt2 = $conn->prepare("INSERT INTO vandon (vandon_id,nhanvien_id,nguoinhan)
            VALUES (?, ?, ?)");
            $stmt2->bindParam(1,$nvid);
            $stmt2->bindParam(2,$nvid);
            $stmt2->bindParam(3,$nn);
            if ($stmt2->execute() ) {
                echo "Tạo thành công! ";
            } else {
                echo "Tạo không thành công!";
            }

            $stmt3 = $conn->prepare("INSERT INTO hanghoa (ten)
            VALUES (?)");
            $stmt3->bindParam(1,$hh);
            if ($stmt3->execute() ) {
                echo "Tạo thành công! ";
            } else {
                echo "Tạo không thành công!";
            }
            
            $stmt4 = $conn->prepare("INSERT INTO chitietvandon (ctvd_id, vandon_id, hangsoluong)
            VALUES (?,?,?)");
            $stmt4->bindParam(1,$nvid);
            $stmt4->bindParam(2,$nvid);
            $stmt4->bindParam(3,$sl);
            if ($stmt4->execute() ) {
                echo "Tạo thành công! ";
            } else {
                echo "Tạo không thành công!";
            }
            
            
            
        }
    ?>

</body>
<footer class="d-flex justify-content-center align-items-center bg-secondary text-light" style="height: 130px">89173 -
    Lê Thanh
    Thuận - CNT61DH
</footer>

</html>