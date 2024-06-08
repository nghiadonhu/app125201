import { Component, OnInit } from '@angular/core';
import { HomeService } from '../service/home.service';
import { Router } from '@angular/router';
import { DecimalPipe } from '@angular/common';
import { catchError } from 'rxjs/operators';
import { throwError } from 'rxjs';
@Component({
  selector: 'app-qlsanpham',
  templateUrl: './qlsanpham.component.html',
  // styleUrls: ['./qlsanpham.component.css']
  styleUrls: [
    // "../../assets/img/core-img/favicon.ico",
    "../../../assets/vendor/fontawesome-free/css/all.min.css",
    "../../../assets/css/sb-admin-2.min.css",
    "../../../assets/vendor/datatables/dataTables.bootstrap4.min.css",
   
  
   
  ]
})
export class QlsanphamComponent {
  constructor(private api : HomeService, private router: Router,private decimalPipe: DecimalPipe) {}
 
  p: number = 1;
  subjects: any;
  selectedItem: any | null = null;
  selectedMaloai_id: any;
ngOnInit(): void {
      
  this.api.getListsp().pipe(
    catchError(error => {
      console.error('Error getting list:', error);
      alert('Bạn không có quyền xem.');
      this.router.navigate(['/admin/thongke']);
      return throwError(error);
    })
  ).subscribe(res => {
    this.subjects = res;
    console.log(this.subjects);
    
  });
}
removeItemsp(id: number): void {
  // Hiển thị cửa sổ xác nhận
  const isConfirmed = window.confirm('Bạn có chắc chắn muốn xóa không?');

  // Nếu người dùng xác nhận xóa
  if (isConfirmed) {
    this.api.removeItemsp(id).subscribe(res => {
      console.log('Item removed successfully', res);
      this.refreshList();
    });
  }
}


// removeItemsp(id: number): void {
//   this.api.removeItemsp(id).subscribe(res => {
//     console.log('Item removed successfully', res);
//     this.refreshList();
//   }) 
// }



editItemsp(id: number,
  Maloai_id: number,
  Tensanpham: any,
  Anh: any,
  Soluong: any,
  Gia: any,
  Maluc: any,
  PhanKhuc: any,
  VongTuaMay: any,
  MoMenXoan: any,
  Giakhuyenmai: any,
  ViewCount: any,
  ReducePrice: any): void {
  this.router.navigate(['/admin/editdatasp', id]);
  this.api.editItemsp(id, Maloai_id, Tensanpham, Anh, Soluong, Gia, Maluc, PhanKhuc, VongTuaMay, MoMenXoan, Giakhuyenmai, ViewCount, ReducePrice).subscribe(
    result => {
      console.log('Item edited successfully', result);
      // You can handle the result as needed
      this.refreshList();
    },
    
  );
}

logout(): void {
  
  this.api.logout().subscribe(
    response => {
      console.log('User logged out successfully!', response);
      // Xóa token khỏi local storage hoặc session storage
      localStorage.removeItem('token');
      this.router.navigate(['/login']);
      // Thực hiện các bước tiếp theo như chuyển hướng về trang đăng nhập
    },
    error => {
      console.error('Error logging out user:', error);
      // Xử lý lỗi ở đây nếu cần
    }
  );
}

getOneItemsp(id: number): void {
  this.api.getItemByIdsp(id).subscribe(
    result => {
      console.log('Item details retrieved successfully', result);
      this.selectedItem = result;
    },
    error => {
      console.error('Error retrieving item details', error);
    }
  );
}
//  `id`, `Maloai_id`, `Tensanpham`, `Anh`, `Soluong`, `Gia`, `Maluc`, `PhanKhuc`, `VongTuaMay`, `MoMenXoan`, `Giakhuyenmai`, `ViewCount`, `ReducePrice` 
addNewItem(itemData: any): void {
  const newItem = {
    Maloai_id: this.selectedMaloai_id || '',
    Tensanpham: itemData.Tensanpham || '',
    Anh: itemData.Anh || '',
    Soluong: itemData.Soluong || 0,
    Gia: itemData.Gia || 0,
    Maluc: itemData.Maluc || '',
    PhanKhuc: itemData.PhanKhuc || '',
    VongTuaMay: itemData.VongTuaMay || '',
    MoMenXoan: itemData.MoMenXoan || '',
    Giakhuyenmai: itemData.Giakhuyenmai || 0,
    ViewCount: itemData.ViewCount || 0,
    ReducePrice: itemData.ReducePrice || 0,
  };

  this.api.addItemsp(newItem).subscribe(
    result => {
      console.log('Item added successfully', result);
      // Sau khi thêm thành công, chuyển hướng đến trang adddata
      this.router.navigate(['/admin/adddata']);
      // Cập nhật danh sách nếu cần thiết
      this.refreshList();
    }
  );
}

formatCurrency(price: number | null): string {
  if (price === null) {
    return 'N/A'; // hoặc giá trị mặc định khác tùy thuộc vào yêu cầu của bạn
  }

  // Nhân price với 1000
  const multipliedPrice = price * 1000;

  // Định dạng giá trị nhân với 1000
  const formattedPrice = this.decimalPipe.transform(multipliedPrice, '1.0-0');

  return formattedPrice ? formattedPrice.replace(/,/g, '.') : '';
}

private refreshList(): void {
  this.api.getListsp().subscribe(list => {
    this.subjects = list;
    console.log(this.subjects);
  });
}
}
