import {
  Component,
  Injector,
  OnInit,
  Output,
  EventEmitter
} from '@angular/core';
import { BsModalRef } from 'ngx-bootstrap/modal';
import { AppComponentBase } from '@shared/app-component-base';
import { StateServiceProxy, CreateOrEditStateDto, CountryServiceProxy, CountryDto } from '@shared/service-proxies/service-proxies';

@Component({
  selector: 'app-create-states-dialog',
  templateUrl: './create-state-dialog.component.html'
})
export class CreateStatesDialogComponent extends AppComponentBase
  implements OnInit {
  saving = false;
  state: CreateOrEditStateDto = new CreateOrEditStateDto();
  countries: CountryDto[] = [];

  @Output() onSave = new EventEmitter<any>();

  constructor(
    injector: Injector,
    private _stateService: StateServiceProxy,
    private _countryService: CountryServiceProxy,
    public bsModalRef: BsModalRef
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this._countryService.getAllCountries().subscribe((countries: CountryDto[]) => {
      this.countries = countries;
    });
  }

  save(): void {
    this.saving = true;

    this._stateService.createOrEdit(this.state).subscribe(
      () => {
        this.notify.info(this.l('SavedSuccessfully'));
        this.bsModalRef.hide();
        this.onSave.emit();
      },
      () => {
        this.saving = false;
      }
    );
  }
}
