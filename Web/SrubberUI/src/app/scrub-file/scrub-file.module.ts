import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ScrubFileRoutingModule } from './scrub-file-routing.module';
import { ScrubComponent } from './scrub/scrub.component';


@NgModule({
  declarations: [ScrubComponent],
  imports: [
    CommonModule,
    ScrubFileRoutingModule
  ]
})
export class ScrubFileModule { }
