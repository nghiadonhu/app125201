import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Router  } from '@angular/router';
import { DecimalPipe } from '@angular/common';
import { HomeService } from '../service/home.service';

@Component({
  selector: 'app-qlctdh',
  templateUrl: './qlctdh.component.html',
  // styleUrls: ['./qlctdh.component.css']
  styleUrls: [
    // "../../assets/img/core-img/favicon.ico",
    "../../../assets/vendor/fontawesome-free/css/all.min.css",
    "../../../assets/css/sb-admin-2.min.css",
    "../../../assets/vendor/datatables/dataTables.bootstrap4.min.css",
  ]
})
export class QlctdhComponent implements OnInit {
  product: any;
  productId: any;
  p: number = 1;
  
  constructor(private activatedRoute: ActivatedRoute,private router: Router,private decimalPipe: DecimalPipe,private route: ActivatedRoute, private homeService: HomeService) {
    //Lấy thông tin sản phẩm từ trạng thái router
    // const navigation = this.router.getCurrentNavigation();
    
    // this.product = navigation?.extras.state?.['product'];
  }

  ngOnInit(): void {
    // Lấy id từ URL
    this.activatedRoute.params.subscribe(params => {
      this.productId = params['id'];
console.log(this.productId)
      // Gọi service để lấy chi tiết sản phẩm
      this.homeService.getItemByIdctdh(this.productId).subscribe(
        (data) => {
          this.product = data;
          console.log(this.product)
          // Có thể thực hiện các hành động khác tại đây nếu cần
        },
        (error) => {
          console.error('Lỗi khi lấy thông tin sản phẩm:', error);
        }
      );
    });
  }

  

  // confirmOrder() {
  //   if (!this.productId) {
  //     console.error('Vui lòng cung cấp productId.');
  //     return;
  //   }
  
  //   // Kiểm tra trạng thái hiện tại của đơn hàng trước khi cập nhật
  //   this.homeService.getOrderStatus(this.productId).subscribe(
  //     currentStatus => {
  //       if (currentStatus === 1) { // Giả sử trạng thái 1 là đã xác nhận
  //         console.log('Đơn hàng đã được xác nhận trước đó.');
  //         alert('Đơn hàng đã được xác nhận trước đó.');
  //         return;
  //       }
  
  //       const newStatus = 1; // Trạng thái mới sẽ là 1 (đã xác nhận)
  //       this.homeService.editItemdhtt(this.productId, newStatus).subscribe(
  //         response => {
  //           console.log('Đã cập nhật trạng thái đơn hàng thành công.');
  //           alert('Bạn đã xác nhận đơn hàng thành công.');
  //           this.router.navigate(['/admin/donhang']); // Chuyển hướng về trang admin/donhang
  //         },
  //         error => {
  //           console.error('Lỗi khi cập nhật trạng thái đơn hàng:', error);
  //           // Xử lý lỗi nếu có
  //         }
  //       );
  //     },
  //     error => {
  //       console.error('Lỗi khi lấy trạng thái đơn hàng:', error);
  //       // Xử lý lỗi nếu có
  //     }
  //   );
  // }

  confirmOrder() {
    if (!this.productId) {
      console.error('Vui lòng cung cấp productId.');
      return;
    }
  
    // Kiểm tra trạng thái hiện tại của đơn hàng trước khi xác nhận
    this.homeService.getOrderStatus(this.productId).subscribe(
      currentStatus => {
        if (currentStatus === 1) {
          console.log('Đơn hàng đã được xác nhận trước đó.');
          alert('Đơn hàng đã được xác nhận trước đó.');
          return;
        }
  
        const newStatus = 1; // Trạng thái mới sẽ là 1 (đã xác nhận)
        this.homeService.editItemdhtt(this.productId, newStatus).subscribe(
          response => {
            console.log('Đã cập nhật trạng thái đơn hàng thành công.');
            alert('Bạn đã xác nhận đơn hàng thành công.');
            this.router.navigate(['/admin/donhang']); // Chuyển hướng về trang admin/donhang
          },
          error => {
            console.error('Lỗi khi cập nhật trạng thái đơn hàng:', error);
          }
        );
      },
      error => {
        console.error('Lỗi khi lấy trạng thái đơn hàng:', error);
      }
    );
  }
  
  cancelOrder() {
    if (!this.productId) {
      console.error('Vui lòng cung cấp productId.');
      return;
    }
  
    // Kiểm tra trạng thái hiện tại của đơn hàng trước khi hủy
    this.homeService.getOrderStatus(this.productId).subscribe(
      currentStatus => {
        if (currentStatus === 2) {
          console.log('Đơn hàng đã được hủy trước đó.');
          alert('Đơn hàng đã được hủy trước đó.');
          return;
        }
  
        if (currentStatus === 0) {
          console.log('Đơn hàng chưa được xác nhận để hủy.');
          alert('Đơn hàng chưa được xác nhận để hủy.');
          return;
        }
  
        const newStatus = 2; // Trạng thái mới sẽ là 2 (đã hủy)
        this.homeService.editItemdhtt(this.productId, newStatus).subscribe(
          response => {
            console.log('Đã cập nhật trạng thái đơn hàng thành công.');
            alert('Bạn đã hủy đơn hàng thành công.');
            this.router.navigate(['/admin/donhang']); // Chuyển hướng về trang admin/donhang
          },
          error => {
            console.error('Lỗi khi cập nhật trạng thái đơn hàng:', error);
          }
        );
      },
      error => {
        console.error('Lỗi khi lấy trạng thái đơn hàng:', error);
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
}
