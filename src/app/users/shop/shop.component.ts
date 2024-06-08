import { Component, OnInit } from '@angular/core';
import { HomeService } from '../service/home.service';
import { ActivatedRoute, Router } from '@angular/router';
import { CartService } from '../service/cart.service';
import { CurrencyPipe } from '@angular/common';
import { DecimalPipe } from '@angular/common';

@Component({
  selector: 'app-shop',
  templateUrl: './shop.component.html',
  styleUrls: [
    // "../../assets/img/core-img/favicon.ico",
    "../../../assets/user/css/core-style.css",
    "../../../assets/user/css/style.css",
    "../../../assets/user/css/responsive.css"

  ]
  // styleUrls: ['./shop.component.css']
})
export class ShopComponent implements OnInit  {
  constructor(private api : HomeService, private router: Router,private cartService: CartService,private currencyPipe: CurrencyPipe,private decimalPipe: DecimalPipe,  private route: ActivatedRoute,) {}
  subjects: any;
  p: number = 1;
  currentPage: number = 1;
  products: any;
  selectedItem: any | null = null;
  categoryId!: any;
  selectedYear: string | null = null; // Biến lưu giữ năm sản xuất được chọn
ngOnInit(): void {
      
  this.api.getListloai().subscribe(res => {
    this.subjects = res;
    console.log(this.subjects);
  });
  this.getProducts();

  this.api.getList().subscribe(res => {
    this.products = res;
    console.log(this.products);
  })
  
}

getProductsByYear(year: string): void {
  this.api.getProductsByYear(year).subscribe(
    (data) => {
      this.products = data;
    },
    (error) => {
      console.error('Error fetching products:', error);
    }
  );
}

// Hàm gọi API để lấy danh sách sản phẩm mặc định hoặc dựa trên năm sản xuất được chọn
getProducts(): void {
  if (this.selectedYear) {
    // Nếu đã chọn năm sản xuất, gọi API để lấy danh sách sản phẩm theo năm đó
    this.getProductsByYear(this.selectedYear);
  } else {
    // Ngược lại, gọi API để lấy danh sách sản phẩm mặc định
    this.api.getList().subscribe(
      (data) => {
        this.products = data;
      },
      (error) => {
        console.error('Error fetching products:', error);
      }
    );
  }
}

// Hàm xử lý sự kiện khi người dùng chọn năm sản xuất từ giao diện
onYearSelect(year: string): void {
  this.selectedYear = year;
  this.getProducts(); // Gọi hàm để lấy danh sách sản phẩm dựa trên năm sản xuất được chọn
}


addToCart(item: any): void {
  console.log('Adding to cart:', item);
  this.cartService.addToCart(item);
 
}

refreshPage(): void {
  this.router.navigate([this.router.url])
    .then(() => {
      window.location.reload();
    });
}

onPageChange(page: number) {
  console.log('Current Page:', page);
  this.currentPage = page;
  // Gọi hàm để lấy dữ liệu mới hoặc thực hiện các hành động liên quan đến chuyển trang
}

redirectToDetailPage(item: any): void {
  
  this.router.navigate(['/users/chitiet', item.id]);
}

formatCurrency(price: number | null): string {
  if (price === null) {
    return 'N/A'; 
  }

  // Nhân price với 1000
  const multipliedPrice = price * 1000;

  // Định dạng giá trị nhân với 1000
  const formattedPrice = this.decimalPipe.transform(multipliedPrice, '1.0-0');

  return formattedPrice ? formattedPrice.replace(/,/g, '.') : '';
}
onCategoryClick(event: Event, categoryId: any) {
  // Ngăn chặn sự kiện mặc định của thẻ 'a' để không làm mất hiệu ứng collapse
  event.preventDefault();

  
  console.log('Category ID:', categoryId);

  // Gọi API hoặc thực hiện các công việc khác dựa trên categoryId
  this.api.getlistByIdsp(categoryId).subscribe(
    (data) => {
      this.products = data;
    },
    (error) => {
      console.error('Error fetching products:', error);
    }
  );
}
}
