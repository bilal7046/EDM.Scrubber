import { AuthService } from './../../auth/Service/auth.service';
import { IUser } from './../../auth/Interface/IUser';
import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {
 currentUser$: Observable<IUser>;

  constructor(public authService:AuthService) {
    this.currentUser$=this.authService.currentUser$;
  }

  ngOnInit(): void {
  }

}
