import { LoginComponent } from './auth/login/login.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [
  { path: '', component:LoginComponent ,pathMatch:'full'},
  { path: 'auth', loadChildren: () => import("./auth/auth.module").then(mod => mod.AuthModule) },
  { path: 'scrub', loadChildren: () => import("./scrub-file/scrub-file.module").then(mod => mod.ScrubFileModule) }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
