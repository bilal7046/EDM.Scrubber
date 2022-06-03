import { AuthService } from './auth/Service/auth.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'SrubberUI';
  constructor(private authService: AuthService) { }
  ngOnInit(): void {

    this.LoadCurrentUser();
  }
  LoadCurrentUser() {
    const token = localStorage.getItem('token');
    if (token) {
      this.authService.LoadCurrentUser(token).subscribe(res => {
        console.log('user loaded');
      },error=>{
        console.log(error);
      })
    }
  }
}
