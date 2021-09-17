import { Component, Injector, OnInit } from '@angular/core';
import { appModuleAnimation } from '@shared/animations/routerTransition';
import { PagedListingComponentBase, PagedRequestDto } from '@shared/paged-listing-component-base';
import { CountryDto, CountryDtoPagedResultDto, CountryServiceProxy, StateDto, StateDtoPagedResultDto, StateServiceProxy } from '@shared/service-proxies/service-proxies';
import { BsModalRef, BsModalService } from 'ngx-bootstrap/modal';

import { finalize } from 'rxjs/operators';
import { CreateStatesDialogComponent } from './create-state-dialog/create-state-dialog.component';
import { EditStatesDialogComponent } from './edit-state-dialog/edit-state-dialog.component';
class PagedStatesRequestDto extends PagedRequestDto {
  filter: string;
}


@Component({
  selector: 'app-states',
  templateUrl: './states.component.html',
  animations: [appModuleAnimation()]
})
export class StatesComponent extends PagedListingComponentBase<StateDto> {
  states: StateDto[] = [];
  countries: CountryDto[] = [];
  countryName = '';
  txtFilter = '';
  isActive: boolean | null;
  countrynAME: string | null;
  advancedFiltersVisible = false;

  constructor(
    injector: Injector,
    private _stateService: StateServiceProxy,
    private _countryService: CountryServiceProxy,
    private _modalService: BsModalService
  ) {
    super(injector);
    this._countryService.getAllCountries().subscribe((countries: CountryDto[]) => {
      this.countries = countries;
    });
  }
  list(
    request: PagedStatesRequestDto,
    pageNumber: number,
    finishedCallback: Function
  ): void {
    request.filter = this.txtFilter;

    this._stateService
      .getAll(
        request.filter, '',
        request.skipCount,
        request.maxResultCount
      )
      .pipe(
        finalize(() => {
          finishedCallback();
        })
      )
      .subscribe((result: StateDtoPagedResultDto) => {
        this.states = result.items;
        this.showPaging(result, pageNumber);
      });
  }

  delete(state: StateDto): void {
    abp.message.confirm(
      this.l('StateDeleteWarningMessage', state.stateName),
      undefined,
      (result: boolean) => {
        if (result) {
          this._stateService
            .delete(state.id)
            .pipe(
              finalize(() => {
                abp.notify.success(this.l('SuccessfullyDeleted'));
                this.refresh();
              })
            )
            .subscribe(() => { });
        }
      }
    );
  }

  createState(): void {
    this.showCreateOrEditStateDialog();
  }

  editState(state: StateDto): void {
    this.showCreateOrEditStateDialog(state.id);
  }

  showCreateOrEditStateDialog(id?: number): void {
    let createOrEditStateDialog: BsModalRef;
    if (!id) {
      createOrEditStateDialog = this._modalService.show(
        CreateStatesDialogComponent,
        {
          class: 'modal-lg',
        }
      );
    } else {
      createOrEditStateDialog = this._modalService.show(
        EditStatesDialogComponent,
        {
          class: 'modal-lg',
          initialState: {
            id: id,
          },
        }
      );
    }

    createOrEditStateDialog.content.onSave.subscribe(() => {
      this.refresh();
    });
  }

  clearFilters(): void {
    this.countryName = this.txtFilter = '';
    this.isActive = undefined;
    this.getDataPage(1);
  }

  getCountry(id) {
    if (id > 0) {
      return this.countries.find(x => x.id == id).countryName;
    } else {
      return 'N/A';
    }
  }

}
