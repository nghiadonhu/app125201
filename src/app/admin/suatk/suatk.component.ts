import { Component, OnInit } from '@angular/core';
import { HomeService } from '../service/home.service';
import { Router, ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-suatk',
  templateUrl: './suatk.component.html',
  // styleUrls: ['./suatk.component.css']
  styleUrls: [
    // "../../assets/img/core-img/favicon.ico",
    "../../../assets/vendor/fontawesome-free/css/all.min.css",
    "../../../assets/css/sb-admin-2.min.css",
    "../../../assets/vendor/datatables/dataTables.bootstrap4.min.css",
  
   
  ]
})
export class SuatkComponent implements OnInit {
  constructor(private http: HttpClient,private api : HomeService, private router: Router, private route: ActivatedRoute) {}
  subjects: any;
  selectedItem: any | null = null;
  
  category: any = {
    
    id:0,
    name: '',
    email: '',
    
    password : '',
    isAdmin: 0,
   
  };

ngOnInit(): void {
  this.route.paramMap.subscribe(params => {
    const id = params.get('id');
    
    this.api.getItemByIdtk(id).subscribe((result: any) => {
      this.category = result[0];
      console.log(this.category);
    });

    this.api.getListtk().subscribe(res => {
      this.subjects = res;
      console.log(this.subjects);
    });
  });
  
}


// editItem(id: number,
//   name: any,
//   email: any,
//   password: number,
//  isAdmin : any,
//  ): void {
//   this.router.navigate(['/admin/editdatatk', id]);
//   this.api.editItemtk(id, name,email,password,isAdmin).subscribe(
//     result => {
//       console.log('Item edited successfully', result);
//       this.refreshList();    
//       this.router.navigate(['/admin/taikhoan']);
//     },
//   );
// }
editItem(id: number, name: any, email: any, password: number, isAdmin: any): void {
    this.router.navigate(['/admin/editdatatk', id]);
    this.api.editItemtk(id, name, email, password, isAdmin).subscribe(
      result => {
        console.log('Item edited successfully', result);
        alert('Sửa tài khoản thành công');
        this.refreshList();
        this.router.navigate(['/admin/taikhoan']);
      },
      error => {
        console.error('Error editing item', error);
        alert('Sửa tài khoản thất bại! Phải có ít nhất 1 Admin');
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

