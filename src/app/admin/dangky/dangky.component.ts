import { Component } from '@angular/core';
import { HomeService } from '../service/home.service';
import { Router  } from '@angular/router';
@Component({
  selector: 'app-dangky',
  templateUrl: './dangky.component.html',
  // styleUrls: ['./login.component.css']
  styleUrls: [
  "../../../assets/vendor/fontawesome-free/css/all.min.css",
  "../../../assets/css/sb-admin-2.min.css",
  "../../../assets/vendor/datatables/dataTables.bootstrap4.min.css",]
})
export class DangkyComponent {
  user = { name: '',
    email: '',
    password: '', };

  constructor(private api: HomeService, private router: Router) {}

  register(): void {
    this.api.register(this.user)
      .subscribe(
        response => {
          console.log('User registered successfully!', response);
          this.router.navigate(['/login']);
          alert('Đăng kí thành công!');
        },
        error => {
          console.error('Error registering user:', error);
          // Handle error logic here
        }
      );
  }
  redirectToLoginPage(): void {
    // Navigate to the detail page with the product ID
    this.router.navigate(['/login']);
  }
}
