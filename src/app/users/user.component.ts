// import { Component } from '@angular/core';

import { AfterViewInit, Component } from '@angular/core';
import { CartService } from '../users/service/cart.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-root',
  templateUrl: './user.component.html',
  // styleUrls: ['./user.component.css']
  styleUrls: [
    // "../../assets/img/core-img/favicon.ico",
    "../../assets/user/css/core-style.css",
    "../../assets/user/css/style.css",
    "../../assets/user/css/responsive.css"
  ]
})
export class UserComponent implements AfterViewInit {
  title = 'Doan5';
  totalItems: number = 0;
  
  constructor(private router: Router,private cartService: CartService) {
    
  }
  ngOnInit(): void {
    // Gọi hàm countTotalItems() khi component được khởi tạo
    this.updateTotalItems();
  }
  reloadPage(): void {
    this.router.navigate(['/users/cart'], { skipLocationChange: true }).then(() => {
      this.router.navigate(['/users/cart']);
    });
    
  }
  updateTotalItems(): void {
    this.totalItems = this.cartService.countTotalItems();
  }
  ngAfterViewInit(): void {
    var src = ["assets/user/js/jquery/jquery-2.2.4.min.js",
    "assets/user/js/popper.min.js",
    "assets/user/js/bootstrap.min.js",
    "assets/user/js/plugins.js",
    "assets/user/js/active.js",
  ];
   src.forEach(element => {
    var the = document.createElement('script');
    the.src = element;
    document.body.appendChild(the);
   });
}
}
