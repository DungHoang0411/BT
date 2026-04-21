// BÀI 10: Xây dựng lớp SinhVien (Cấu trúc dữ liệu chính)
class SinhVien {
  String name;
  int age;
  double gpa;

  SinhVien(this.name, this.age, this.gpa);

  // BÀI 3 & 10: Phương thức hiển thị kèm kiểm tra điều kiện đậu/rớt
  void hienThiThongTin() {
    bool laDau = gpa >= 5.0; // BÀI 3: Kiểm tra điều kiện với bool
    String ketQua = laDau ? "Đậu" : "Rớt";
    print("Tên: $name | Tuổi: $age | GPA: $gpa | Kết quả: $ketQua");
  }
}

// BÀI 6: Viết hàm không có tham số (Hàm chào mừng)
void hello() {
  print("=== CHƯƠNG TRÌNH QUẢN LÝ SINH VIÊN DART ===");
}

// BÀI 7 & 8: Hàm có tham số, trả về và sử dụng Arrow function
// Tính tổng điểm của 2 sinh viên bất kỳ
double tinhTongDiemHaiSV(double d1, double d2) => d1 + d2;

// BÀI 9: Hàm xử lý danh sách (Tính GPA trung bình của cả lớp)
double tinhGPATrungBinh(List<SinhVien> danhSach) {
  if (danhSach.isEmpty) return 0.0;
  double tong = 0;
  for (var sv in danhSach) {
    tong += sv.gpa;
  }
  return tong / danhSach.length;
}

void main() {
  // BÀI 6: Gọi hàm chào mừng
  hello();

  // BÀI 1: Khai báo biến (Thông tin quản trị viên hoặc cấu hình hệ thống)
  final String nguoiQuanLy = "Admin_Dart";
  const double diemChuan = 5.0;
  print("Người quản lý: $nguoiQuanLy | Điểm chuẩn: $diemChuan\n");

  // BÀI 4 & 10: Làm việc với List các đối tượng SinhVien
  List<SinhVien> danhSachSV = [
    SinhVien("Nguyễn Văn A", 20, 8.5),
    SinhVien("Trần Thị B", 19, 4.5),
    SinhVien("Lê Văn C", 21, 7.0),
    SinhVien("Hoàng Thị D", 22, 9.2),
  ];

  // BÀI 4: Truy xuất phần tử trong List
  print("Sinh viên đầu tiên trong danh sách:");
  danhSachSV.first.hienThiThongTin();
  print("");

  // Hiển thị toàn bộ danh sách
  print("--- Danh sách sinh viên ---");
  for (var sv in danhSachSV) {
    sv.hienThiThongTin();

  // BÀI 2: Thực hiện phép toán với số (Tính toán GPA sau khi cộng điểm thưởng)
  print("\n--- Thử nghiệm toán tử (Bài 2) ---");
  double diemThuong = 0.5;
  print("GPA SV1 sau khi cộng điểm thưởng: ${danhSachSV[0].gpa + diemThuong}");

  // BÀI 5: Làm việc với Map (Lưu trữ thống kê nhanh)
  Map<String, dynamic> thongKe = {
    "tong_so": danhSachSV.length,
    "lop": "CNTT-01",
    "ngay_cap_nhat": "21/04/2026",
  };
  print("\nThống kê lớp học (Map): $thongKe");

  // BÀI 9: Gọi hàm xử lý danh sách
  double gpaTB = tinhGPATrungBinh(danhSachSV);
  print("GPA Trung bình của cả lớp: ${gpaTB.toStringAsFixed(2)}");

  // BÀI 8: Sử dụng Arrow Function đã khai báo
  double tongHaiSV = tinhTongDiemHaiSV(danhSachSV[0].gpa, danhSachSV[2].gpa);
  print("Tổng GPA của SV1 và SV3 là: $tongHaiSV");
}
