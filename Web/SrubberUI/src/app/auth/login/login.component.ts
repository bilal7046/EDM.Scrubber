import { AuthService } from './../Service/auth.service';
import { Component, OnInit } from '@angular/core';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
public ShowMenu=false;
public data={} as any;
  constructor(public service:AuthService,private toastr:ToastrService) {
    this.Clear();
   }

  ngOnInit(): void {
  }
  private Clear() {
    this.data.Email = "";
    this.data.Password = "";
  }
  public SignIn()
  {
      this.service.SignIn(this.data).subscribe(res=>{
      },error=>{
        console.log(JSON.stringify(error.error.message));
         this.toastr.error(error.error.message);
      })
  }

}
