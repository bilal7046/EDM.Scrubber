import { IUser } from './../Interface/IUser';

import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { BehaviorSubject } from 'rxjs';
import { map } from 'rxjs/operators';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  public baseURL = environment.baseURL;
  private currentUserSource = new BehaviorSubject<IUser>(null);
  currentUser$ = this.currentUserSource.asObservable();

  constructor(public http: HttpClient, private router: Router) { }
GetCurrentUserValue()
{
  return this.currentUserSource.value;
}
  LoadCurrentUser(token: string) {

    var headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ' + token
   });

    return this.http.get(this.baseURL+'api/Account/ValidateToken',{headers}).pipe(
      map((user:IUser)=>{
        if (user) {
          localStorage.setItem('token',user.token);
          this.currentUserSource.next(user);
        }
      })
    )
  }
  public SignIn(data) {
    return this.http.post(this.baseURL + 'api/Account/SignIn', data).pipe(

      map((user: IUser) => {
        if (user) {
          localStorage.setItem('token', user.token);
          this.currentUserSource.next(user);

          this.router.navigate(['scrub']);
        }
      })
    );
  }
  public SignUp(data) {
    return this.http.post(this.baseURL + 'api/Account/SignUp', data);
  }
  public Logout() {
    localStorage.removeItem('token');
    this.currentUserSource.next(null);
    this.router.navigate['auth/Login']
  }
}
