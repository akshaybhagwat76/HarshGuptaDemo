import {
  Component,
  Injector,
  OnInit,
  Output,
  EventEmitter
} from '@angular/core';
import { BsModalRef } from 'ngx-bootstrap/modal';
import { AppComponentBase } from '@shared/app-component-base';
import { StateServiceProxy, CreateOrEditStateDto, GetStateForEditOutput, CountryServiceProxy, CountryDto } from '@shared/service-proxies/service-proxies';

@Component({
  selector: 'app-edit-states-dialog',
  templateUrl: './edit-state-dialog.component.html'
})
export class EditStatesDialogComponent extends AppComponentBase
  implements OnInit {
  saving = false;
  state: GetStateForEditOutput = new GetStateForEditOutput();
  id: number;
  stateDto: CreateOrEditStateDto = new CreateOrEditStateDto();
  countries: CountryDto[] = [];

  @Output() onSave = new EventEmitter<any>();

  constructor(
    injector: Injector,
    public _stateService: StateServiceProxy,
    private _countryService: CountryServiceProxy,
    public bsModalRef: BsModalRef
  ) {
    super(injector);
  }

  ngOnInit(): void {
    this._countryService.getAllCountries().subscribe((countries: CountryDto[]) => {
      this.countries = countries;
    });

    this._stateService.getStateForEdit(this.id).subscribe((result: GetStateForEditOutput) => {
      this.state = result;
    });
  }

  save(): void {
    this.saving = true;
    this.stateDto.stateName = this.state.state.stateName;
    this.stateDto.countryId = this.state.state.countryId;
    this.stateDto.id = this.state.state.id;

    this._stateService.createOrEdit(this.stateDto).subscribe(
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
