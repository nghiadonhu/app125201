import { Component, OnInit } from '@angular/core';
import { HomeService } from '../service/home.service';
import { Router, ActivatedRoute } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import * as ClassicEditor from '@ckeditor/ckeditor5-build-classic'; 
@Component({
  selector: 'app-suatt',
  templateUrl: './suatt.component.html',
  // styleUrls: ['./suatt.component.css']
  styleUrls: [
    // "../../assets/img/core-img/favicon.ico",
    "../../../assets/vendor/fontawesome-free/css/all.min.css",
    "../../../assets/css/sb-admin-2.min.css",
    "../../../assets/vendor/datatables/dataTables.bootstrap4.min.css",
  
   
  ]
})
export class SuattComponent implements OnInit {
  constructor(private http: HttpClient,private api : HomeService, private router: Router, private route: ActivatedRoute) {}
  subjects: any;
  selectedItem: any | null = null;
  nameImg!: string;
  selectedNhanvien_id: any;
  category: any = {
    id:0,
    Nhanvien_id: 0,
    Ngaynhap: '',
    Anh: '',
   
    Mota: '',
    Tentieude: '',
   
  };
  public editorConfig = {
    toolbar: ['heading', '|', 'bold', 'italic', 'underline', 'strikethrough', 'subscript', 'superscript', 'link', 'bulletedList', 'numberedList', 'blockQuote', 'fontFamily', 'fontSize', 'fontColor', 'fontBackgroundColor', 'alignment', 'horizontalLine', 'imageUpload', 'table', 'code', 'undo', 'redo', 'removeFormat', 'pasteFromWord', 'indent', 'outdent', 'justifyLeft', 'justifyCenter', 'justifyRight', 'justifyBlock']
  };


ngOnInit(): void {
  this.route.paramMap.subscribe(params => {
    const id = params.get('id');
    
    this.api.getItemByIdtt(id).subscribe((result: any) => {
      this.category = result[0];
      console.log(this.category);
    });

    this.api.getListnv().subscribe(res => {
      this.subjects = res;
      console.log(this.subjects);
    });
  });
  
}
onMaloaiChange(event: any): void {
  this.selectedNhanvien_id = event.target.value;
}

public createEditor(): any {
  return ClassicEditor;
}

uploadFile(file: File): void {
  const formData: FormData = new FormData();
  formData.append('Anh', file, file.name);

  this.http.post<any>('http://localhost:3000/upload', formData)
    .subscribe(
      (response) => {
        this.nameImg = response.filename;
        console.log('File uploaded successfully', response.filename);
        
      },
      (error) => {
        console.error('Error uploading file', error);
        
      }
    );
}




onFileSelected(event: any): void {
  const file: File = event.target.files[0];
  this.uploadFile(file);
}


// removeItem(id: number): void {
//   this.api.removeItem(id).subscribe(res => {
//     console.log('Item removed successfully', res);
//     this.refreshList();
    
//   }) 
// }
editItemsp(id: number,
  Nhanvien_id: number,
  Ngaynhap: any,
  Anh: any,
  Mota: any,
  Tentieude: any): void {
  this.router.navigate(['/editdatasp', id]);
  Anh=this.nameImg;
  this.api.editItemtt(id, Nhanvien_id,Ngaynhap,Anh,Mota,Tentieude).subscribe(
    result => {
      console.log('Item edited successfully', result);
    
      this.refreshList();
      this.router.navigate(['/admin/tintuc']);
    },
   
  );
}
// editItemsp(
//   id: number,
//   Maloai_id: number,
//   Tensanpham: any,
//   Anh: any,
//   Soluong: any,
//   Gia: any,
//   Maluc: any,
//   PhanKhuc: any,
//   VongTuaMay: any,
//   MoMenXoan: any,
//   Giakhuyenmai: any,
//   ViewCount: any,
//   ReducePrice: any
// ): void {
  

//   this.api.editItemsp(
//     id,
//     Maloai_id,
//     Tensanpham,
//     Anh,
//     Soluong,
//     Gia,
//     Maluc,
//     PhanKhuc,
//     VongTuaMay,
//     MoMenXoan,
//     Giakhuyenmai,
//     ViewCount,
//     ReducePrice
//   ).subscribe(
//     result => {
//       console.log('Item edited successfully', result);
     
//       this.refreshList();
    
//     }
//   );
// }






private refreshList(): void {
  this.api.getListtt().subscribe(list => {
    this.subjects = list;
    console.log(this.subjects);
  });
}
}
