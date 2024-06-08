import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SuattComponent } from './suatt.component';

describe('SuattComponent', () => {
  let component: SuattComponent;
  let fixture: ComponentFixture<SuattComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [SuattComponent]
    });
    fixture = TestBed.createComponent(SuattComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
