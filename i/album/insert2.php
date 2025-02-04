<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>ฟอร์มข้อมูลสินค้า</title>
</head>

<body>

<h1>ฟอร์มข้อมูลสินค้า</h1>

<form method="post" action="" enctype="multipart/form-data">
    ชื่อสินค้า: <input type="text" name="pname" required autofocus> <br>
    ราคา: <input type="text" name="pprice" required> <br>
    รายละเอียด: <textarea name="pdetail" required></textarea> <br>
    รูปสินค้า: <input type="file" name="pimage" accept="image/*" required> <br>
    <button type="submit">บันทึก</button>
</form>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    include_once("../connect.php");

    $pname = mysqli_real_escape_string($conn, $_POST['pname']);
    $pprice = mysqli_real_escape_string($conn, $_POST['pprice']);
    $pdetail = mysqli_real_escape_string($conn, $_POST['pdetail']);
    
    // ตรวจสอบการอัปโหลดไฟล์
    if (isset($_FILES['pimage']) && $_FILES['pimage']['error'] === UPLOAD_ERR_OK) {
        $fileTmpPath = $_FILES['pimage']['tmp_name'];
        $fileName = $_FILES['pimage']['name'];
        $fileSize = $_FILES['pimage']['size'];
        $fileType = $_FILES['pimage']['type'];

        $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));
        $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif'];

        if (in_array($fileExtension, $allowedExtensions)) {
            // เพิ่มข้อมูลสินค้าในฐานข้อมูลเพื่อรับ p_id อัตโนมัติ
            $sqlInsert = "INSERT INTO products (p_name, p_price, p_detail, p_ext) VALUES ('$pname', '$pprice', '$pdetail', '$fileExtension')";
            if (mysqli_query($conn, $sqlInsert)) {
                $productId = mysqli_insert_id($conn); // รับ p_id ที่เพิ่งเพิ่ม
                
                // ตั้งชื่อไฟล์ใหม่เป็นรหัสสินค้า
                $newFileName = $productId . '.' . $fileExtension;
                $destination = "../images/" . $newFileName;

                // ย้ายไฟล์ไปยังโฟลเดอร์เป้าหมาย
                if (move_uploaded_file($fileTmpPath, $destination)) {
                    echo "<script>alert('บันทึกข้อมูลสำเร็จ');</script>";
                } else {
                    echo "<script>alert('ไม่สามารถบันทึกรูปภาพได้');</script>";
                }
            } else {
                echo "<script>alert('เกิดข้อผิดพลาดในการบันทึกข้อมูลสินค้า');</script>";
            }
        } else {
            echo "<script>alert('ประเภทไฟล์ไม่รองรับ');</script>";
        }
    } else {
        echo "<script>alert('กรุณาอัปโหลดรูปสินค้า');</script>";
    }
}
?>

</body>
</html>