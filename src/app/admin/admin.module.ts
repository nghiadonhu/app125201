import { NgModule } from '@angular/core';
import { CommonModule  } from '@angular/common';


import { AdminRoutingModule } from './admin-routing.module';
import { AdminComponent } from './admin.component';
import { FormsModule } from '@angular/forms';

import { Datap1Component } from './datap1/datap1.component';

import { HttpClientModule } from '@angular/common/http';
import { NewComponent } from './new/new.component';
import { AdddataComponent } from './adddata/adddata.component';
import { QlsanphamComponent } from './qlsanpham/qlsanpham.component';
import { AddataspComponent } from './addatasp/addatasp.component';
import { SuasanphamComponent } from './suasanpham/suasanpham.component';
import { QldonhangComponent } from './qldonhang/qldonhang.component';
import { QlctdhComponent } from './qlctdh/qlctdh.component';

import { DecimalPipe } from '@angular/common';
import { QlhdnComponent } from './qlhdn/qlhdn.component';
import { QlcthdnComponent } from './qlcthdn/qlcthdn.component';
import { AddcthdnComponent } from './addcthdn/addcthdn.component';
import { AddhdnComponent } from './addhdn/addhdn.component';
import { SuahdnComponent } from './suahdn/suahdn.component';
import { SuattComponent } from './suatt/suatt.component';
import { NgxPaginationModule } from 'ngx-pagination';
import { QlnccComponent } from './qlncc/qlncc.component';
import { AdddatanccComponent } from './adddatancc/adddatancc.component';
import { SuanccComponent } from './suancc/suancc.component';
import { SuatkComponent } from './suatk/suatk.component';
import { QlnhanvienComponent } from './qlnhanvien/qlnhanvien.component';
import { QltaikhoanComponent } from './qltaikhoan/qltaikhoan.component';
import { SuanvComponent } from './suanv/suanv.component';
import { AdddatanvComponent } from './adddatanv/adddatanv.component';
import { QlkhComponent } from './qlkh/qlkh.component';
import { QltintucComponent } from './qltintuc/qltintuc.component';
import { SuakhComponent } from './suakh/suakh.component';
import { AdddatakhComponent } from './adddatakh/adddatakh.component';
import { AdddatattComponent } from './adddatatt/adddatatt.component';
import { ThongkeComponent } from './thongke/thongke.component';
import { InhoadonComponent } from './inhoadon/inhoadon.component';
import { LoginComponent } from './login/login.component';
import { DangkyComponent } from './dangky/dangky.component';
import { CKEditorModule } from '@ckeditor/ckeditor5-angular';

@NgModule({
  declarations: [
    AdminComponent,
   
    Datap1Component,
    
    NewComponent,
    AdddataComponent,
    QlsanphamComponent,
    AddataspComponent,
    SuasanphamComponent,
    QldonhangComponent,
    QlctdhComponent,
    QlhdnComponent,
    QlcthdnComponent,
    AddcthdnComponent,
    AddhdnComponent,
    SuahdnComponent,
    QlnccComponent,
    AdddatanccComponent,
    SuanccComponent,
    QlnhanvienComponent,
    SuanvComponent,
    AdddatanvComponent,
    QlkhComponent,
    SuakhComponent,
    AdddatakhComponent,
    ThongkeComponent,
    InhoadonComponent,
    LoginComponent,
    DangkyComponent,
    QltintucComponent,
    AdddatattComponent,
    SuattComponent,
    QltaikhoanComponent,
    SuatkComponent
   
  ],
  imports: [
    CommonModule ,
    AdminRoutingModule,
    FormsModule,
    HttpClientModule,
    NgxPaginationModule,
    CKEditorModule
  ],
  providers: [

    DecimalPipe
  ],
  bootstrap: [AdminComponent]
})
export class AdminModule { }
