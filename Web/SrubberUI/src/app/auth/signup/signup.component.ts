import { AuthService } from './../Service/auth.service';
import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';
import { Router } from '@angular/router';


@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent implements OnInit {
  public data = {} as any;
  constructor(private service: AuthService,private toastr:ToastrService,private router:Router) {

    this.Clear();
  }

  ngOnInit(): void {
  }
  private Clear() {
    this.data.FirstName = "";
    this.data.LastName = "";
    this.data.Email = "";
    this.data.Password = "";
    this.data.ConfirmPassword = "";
  }
  public SignUp() {
    this.service.SignUp(this.data).subscribe(res => {

      this.toastr.success("User created successfully");
      this.router.navigate(['/auth/Login']);
    }, error => {
      this.toastr.error(error.error.errors[0]);
    })
  }
}
