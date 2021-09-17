import { Component, Injector, OnInit } from '@angular/core';
import { appModuleAnimation } from '@shared/animations/routerTransition';
import { PagedListingComponentBase, PagedRequestDto } from '@shared/paged-listing-component-base';
import { CountryDto, CountryDtoPagedResultDto, CountryServiceProxy } from '@shared/service-proxies/service-proxies';
import { BsModalRef, BsModalService } from 'ngx-bootstrap/modal';

import { finalize } from 'rxjs/operators';
import { CreateCountryDialogComponent } from './create-country/create-country-dialog.component';
import { EditCountryDialogComponent } from './edit-country/edit-country-dialog.component';
class PagedCountriesRequestDto extends PagedRequestDto {
  keyword: string;
  countryName: string | null;
}

@Component({
  selector: 'app-countries',
  templateUrl: './countries.component.html',
  animations: [appModuleAnimation()]
})
export class CountriesComponent extends PagedListingComponentBase<CountryDto> {
  countries: CountryDto[] = [];
  countryName = '';
  isActive: boolean | null;
  advancedFiltersVisible = false;

  constructor(
    injector: Injector,
    private _countryService: CountryServiceProxy,
    private _modalService: BsModalService
  ) {
    super(injector);
  }
  list(
    request: PagedCountriesRequestDto,
    pageNumber: number,
    finishedCallback: Function
  ): void {
    request.countryName = this.countryName;

    this._countryService
      .getAll(
        '',
        request.countryName, '',
        request.skipCount,
        request.maxResultCount
      )
      .pipe(
        finalize(() => {
          finishedCallback();
        })
      )
      .subscribe((result: CountryDtoPagedResultDto) => {
        this.countries = result.items;
        this.showPaging(result, pageNumber);
      });
  }

  delete(country: CountryDto): void {
    abp.message.confirm(
      this.l('CountryDeleteWarningMessage', country.countryName),
      undefined,
      (result: boolean) => {
        if (result) {
          this._countryService
            .delete(country.id)
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

  createCountry(): void {
    this.showCreateOrEditCountryDialog();
  }

  editCountry(country: CountryDto): void {
    this.showCreateOrEditCountryDialog(country.id);
  }

  showCreateOrEditCountryDialog(id?: number): void {
    let createOrEditCountryDialog: BsModalRef;
    if (!id) {
      createOrEditCountryDialog = this._modalService.show(
        CreateCountryDialogComponent,
        {
          class: 'modal-lg',
        }
      );
    } else {
      createOrEditCountryDialog = this._modalService.show(
        EditCountryDialogComponent,
        {
          class: 'modal-lg',
          initialState: {
            id: id,
          },
        }
      );
    }

    createOrEditCountryDialog.content.onSave.subscribe(() => {
      this.refresh();
    });
  }

  clearFilters(): void {
    this.countryName = '';
    this.isActive = undefined;
    this.getDataPage(1);
  }

}
