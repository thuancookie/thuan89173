<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ôn tập</title>
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


            </div>
        </div>
    </nav>
    <div class="container" style="min-height: 100vh">
        <form action="" method="post" class="w-25">
            <label for="">Tài khoản:</label>
            <input class="form-control" type="text" name="txtUsername" id="">
            <label for="">Mật khẩu:</label>
            <input class="form-control" type="password" name="txtPassword" id=""><br>
            <input class="btn btn-warning" type="submit" value="Đăng nhập" name="btnLogin">
        </form><br>
        <?php
            if (isset($_POST["btnLogin"])) {
                $un = $_POST["txtUsername"];
                $pw = $_POST["txtPassword"];

                $stmt = $conn->prepare("SELECT * FROM user WHERE username = '$un'");
                $stmt->setFetchMode(PDO::FETCH_ASSOC);
                if ($stmt->execute()) {
                    while ($row = $stmt->fetch()) {
                        echo "Đăng nhập thành công <br>";
                        echo "Tài khoản: ";
                        echo $row["username"]; 
                        echo "<br>Mật khẩu: ";
                        echo $row["matkhau"]; 
                        echo "<br>Tên đầy đủ: ";
                        echo $row["tendaydu"]; 
                        
                    }
                    
                } else {
                    echo "Đăng nhập thất bại";
                }
                
                
            }
        ?>
    </div>
</body>
<footer class="d-flex justify-content-center align-items-center bg-secondary text-light" style="height: 130px">89173 -
    Lê Thanh
    Thuận - CNT61DH
</footer>

</html>