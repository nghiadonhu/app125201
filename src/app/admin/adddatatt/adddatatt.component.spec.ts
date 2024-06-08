import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AdddatattComponent } from './adddatatt.component';

describe('AdddatattComponent', () => {
  let component: AdddatattComponent;
  let fixture: ComponentFixture<AdddatattComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AdddatattComponent]
    });
    fixture = TestBed.createComponent(AdddatattComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
