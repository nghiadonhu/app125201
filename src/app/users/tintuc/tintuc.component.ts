import { Component, OnInit } from '@angular/core';
import { HomeService } from '../service/home.service';
import { CurrencyPipe } from '@angular/common';
import { DecimalPipe } from '@angular/common';
@Component({
  selector: 'app-tintuc',
  templateUrl: './tintuc.component.html',
  styleUrls: [
    "../../../assets/user/css/core-style.css",
    "../../../assets/user/css/style.css",
    "../../../assets/user/css/responsive.css"
  ]
})
export class TintucComponent implements OnInit  {
  constructor(private api : HomeService,private currencyPipe: CurrencyPipe,private decimalPipe: DecimalPipe) {}
  subjects: any;
  ngOnInit(): void {
      
    this.api.getListtt().subscribe(res => {
      this.subjects = res;
      console.log(this.subjects);
    });
  
   
    
  }
}
