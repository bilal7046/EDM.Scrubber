import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ScrubComponent } from './scrub.component';

describe('ScrubComponent', () => {
  let component: ScrubComponent;
  let fixture: ComponentFixture<ScrubComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ScrubComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ScrubComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
