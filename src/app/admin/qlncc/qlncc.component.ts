import { Component, OnInit } from '@angular/core';
import { HomeService } from '../service/home.service';
import { Router } from '@angular/router';
import { catchError } from 'rxjs/operators';
import { throwError } from 'rxjs';
@Component({
  selector: 'app-qlncc',
  templateUrl: './qlncc.component.html',
  // styleUrls: ['./qlncc.component.css']
  styleUrls: [
    // "../../assets/img/core-img/favicon.ico",
    "../../../assets/vendor/fontawesome-free/css/all.min.css",
    "../../../assets/css/sb-admin-2.min.css",
    "../../../assets/vendor/datatables/dataTables.bootstrap4.min.css",
  
   
  ]
})
export class QlnccComponent implements OnInit{
  constructor(private api : HomeService, private router: Router) {}
    subjects: any;
    selectedItem: any | null = null;
    p: number = 1;
  ngOnInit(): void {
        
    // this.api.getListncc().subscribe(res => {
    //   this.subjects = res;
    //   console.log(this.subjects);
    // })
    this.api.getListncc().pipe(
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
  // removeItem(id: number): void {
  //   // Hiển thị cửa sổ xác nhận
  //   const isConfirmed = window.confirm('Bạn có chắc chắn muốn xóa không?');
  
  //   // Nếu người dùng xác nhận xóa
  //   if (isConfirmed) {
  //     this.api.removeItemncc(id).subscribe(res => {
  //       console.log('Item removed successfully', res);
  //       this.refreshList();
  //     });
  //   }
  // }
  removeItem(id: number): void {
    const isConfirmed = window.confirm('Bạn có chắc chắn muốn xóa không?');
  
    if (isConfirmed) {
      this.api.removeItemncc(id).pipe(
        catchError(error => {
          console.error('Error removing item:', error);
          alert('Bạn không có quyền truy cập.');
          return throwError(error);
        })
      ).subscribe(res => {
        console.log('Item removed successfully', res);
        this.refreshList();
      });
    }
  }

  // removeItem(id: number): void {
  //   this.api.removeItemncc(id).subscribe(res => {
  //     console.log('Item removed successfully', res);
  //     this.refreshList();
  //   }) 
  // }

  editItem(id: number,
    Tenncc: any,
    Diachi: any,
    Sdt: any,): void {
    this.router.navigate(['/admin/editdatancc', id]);
    this.api.editItemncc(id, Tenncc,Diachi,Sdt).subscribe(
      result => {
        console.log('Item edited successfully', result);
        // You can handle the result as needed
        this.refreshList();
      },
      
    );
  }


  getOneItem(id: number): void {
    this.api.getItemById(id).subscribe(
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
    
    const newItem = {
     
      Tenncc: itemData.Tenncc || '',
      Diachi: itemData.Diachi || '',
      Sdt: itemData.Sdt || 0,
    };
    this.router.navigate(['/admin/adddatancc']);
    this.api.addItemncc(newItem).subscribe(
      result => {
        console.log('Item added successfully', result);
        // You can handle the result as needed
        this.refreshList();
      }
    );
  }

  private refreshList(): void {
    this.api.getListncc().subscribe(list => {
      this.subjects = list;
      console.log(this.subjects);
    });
  }

}