import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PhanmemComponent } from './phanmem.component';

describe('PhanmemComponent', () => {
  let component: PhanmemComponent;
  let fixture: ComponentFixture<PhanmemComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [PhanmemComponent]
    });
    fixture = TestBed.createComponent(PhanmemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
