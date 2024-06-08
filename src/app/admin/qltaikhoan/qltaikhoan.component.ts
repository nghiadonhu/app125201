import { Component, OnInit } from '@angular/core';
import { HomeService } from '../service/home.service';
import { Router } from '@angular/router';
import { catchError } from 'rxjs/operators';
import { throwError } from 'rxjs';
@Component({
  selector: 'app-qltaikhoan',
  templateUrl: './qltaikhoan.component.html',
  // styleUrls: ['./qltaikhoan.component.css']
  styleUrls: [
    // "../../assets/img/core-img/favicon.ico",
    "../../../assets/vendor/fontawesome-free/css/all.min.css",
    "../../../assets/css/sb-admin-2.min.css",
    "../../../assets/vendor/datatables/dataTables.bootstrap4.min.css",
  
   
  ]
})
export class QltaikhoanComponent implements OnInit{
  constructor(private api : HomeService, private router: Router) {}
    subjects: any;
    selectedItem: any | null = null;
    p: number = 1;
  ngOnInit(): void {
        
    this.api.getListtk().pipe(
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

  removeItem(id: number): void {
    // Hiển thị cửa sổ xác nhận
    const isConfirmed = window.confirm('Bạn có chắc chắn muốn xóa không?');
  
    // Nếu người dùng xác nhận xóa
    if (isConfirmed) {
      this.api.removeItemtk(id).subscribe(res => {
        console.log('Item removed successfully', res);
        this.refreshList();
      });
    }
  }

  // removeItem(id: number): void {
  //   this.api.removeItemnv(id).subscribe(res => {
  //     console.log('Item removed successfully', res);
  //     this.refreshList();
     
  //   }) 
  // }
 
  editItem(id: number,
    name: any,
    email: any,
    password: any,
    isAdmin:any
   
   
    ): void {
    this.router.navigate(['/admin/editdatatk', id]);
    this.api.editItemtk(id, name,email,password,isAdmin).subscribe(
      result => {
        console.log('Item edited successfully', result);
        // You can handle the result as needed
        this.refreshList();
      },
      
    );
  }


  getOneItem(id: number): void {
    this.api.getItemByIdtk(id).subscribe(
      result => {
        console.log('Item details retrieved successfully', result);
        this.selectedItem = result;
      },
      error => {
        console.error('Error retrieving item details', error);
      }
    );
  }

  addNewItem(itemData: any): void {
    // id: number,
    // Tennhanvien: any,
    // Ngaysinh: any,
    // Sdt: any,
    // Diachi: any,
    // Email: any,
    // Anh: any,
    const newItem = {
     
      Tennhanvien: itemData.Tennhanvien || '',
      Ngaysinh: itemData.Ngaysinh || '',
      Sdt: itemData.Sdt || 0,
      Diachi: itemData.Diachi || '',
      Email: itemData.Email || '',
      Anh: itemData.Anh || '',
    };
    this.router.navigate(['/admin/adddatanv']);
    this.api.addItemnv(newItem).subscribe(
      result => {
        console.log('Item added successfully', result);
        // You can handle the result as needed
        this.refreshList();
      }
    );
  }

  private refreshList(): void {
    this.api.getListtk().subscribe(list => {
      this.subjects = list;
      console.log(this.subjects);
    });
  }

}
