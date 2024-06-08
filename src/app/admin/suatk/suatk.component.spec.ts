import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SuatkComponent } from './suatk.component';

describe('SuatkComponent', () => {
  let component: SuatkComponent;
  let fixture: ComponentFixture<SuatkComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [SuatkComponent]
    });
    fixture = TestBed.createComponent(SuatkComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
