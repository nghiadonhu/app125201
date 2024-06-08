import { Component, OnInit } from '@angular/core';
import { HomeService } from '../service/home.service';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import * as ClassicEditor from '@ckeditor/ckeditor5-build-classic'; 

@Component({
  selector: 'app-addatatt',
  templateUrl: './adddatatt.component.html',
  styleUrls: [
    "../../../assets/vendor/fontawesome-free/css/all.min.css",
    "../../../assets/css/sb-admin-2.min.css",
    "../../../assets/vendor/datatables/dataTables.bootstrap4.min.css",
  ]
})
export class AdddatattComponent implements OnInit {
  constructor(private http: HttpClient, private api: HomeService, private router: Router) {}

  itemData: any = {};
  selectedFile: any;
  selectedItem: any | null = null;
  subjects: any[] = [];
  selectedNhanvien_id: any;
  nameImg!: string;
  
  public editorConfig = {
    toolbar: ['heading', '|', 'bold', 'italic', 'underline', 'strikethrough', 'subscript', 'superscript', 'link', 'bulletedList', 'numberedList', 'blockQuote', 'fontFamily', 'fontSize', 'fontColor', 'fontBackgroundColor', 'alignment', 'horizontalLine', 'imageUpload', 'table', 'code', 'undo', 'redo', 'removeFormat', 'pasteFromWord', 'indent', 'outdent', 'justifyLeft', 'justifyCenter', 'justifyRight', 'justifyBlock']
  };

  ngOnInit(): void {
    this.api.getListnv().subscribe(res => {
      this.subjects = res;
      console.log(this.subjects);
    });
  }

  // Tạo một hàm để tạo thể hiện CKEditor
  public createEditor(): any {
    return ClassicEditor;
  }

  onNhanvienChange(event: any): void {
    this.selectedNhanvien_id = event.target.value;
  }

  addNewItem(itemData: any): void {
    itemData.Anh = this.nameImg;
    this.api.addItemtt(itemData).subscribe(
      result => {
        console.log('Item added successfully', result);
        this.router.navigate(['/admin/tintuc']);
        this.refreshList();
      }
    );
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

  private refreshList(): void {
    this.api.getListtt().subscribe(list => {
      this.subjects = list;
      console.log(this.subjects);
    });
  }
}
