import { Injectable } from '@angular/core';
import { State, Action, StateContext } from '@ngxs/store';
import { {{pascalCase name}}Action } from './{{dashCase name}}.actions';

export interface {{pascalCase name}}StateModel {
  public items: string[];
}

const defaults: {{pascalCase name}}StateModel = {
  items: []
};

@State<{{pascalCase name}}StateModel>({
  name: '{{camelCase name}}',
  defaults
})
@Injectable()
export class {{pascalCase name}}State {
  @Action({{pascalCase name}}Action)
  add({ getState, setState }: StateContext<{{pascalCase name}}StateModel>, { payload }: {{pascalCase name}}Action) {
    const state = getState();
    setState({ items: [ ...state.items, payload ] });
  }
}
