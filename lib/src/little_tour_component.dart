import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'little-tour',
  template: '''
    <input #newHero
      (keyup.enter)="addHero(newHero.value)"
      (blur)="addHero(newHero.value); newHero.value='' ">

    <button (click)="addHero(newHero.value)">Add</button>

    <ul><li *ngFor="let hero of heroes">{{hero}}</li></ul>
  ''',
  directives: const [CORE_DIRECTIVES, formDirectives],
)
class LittleTourComponent {
  List<String> heroes = ['Windstorm', 'Bombasto', 'Magneta', 'Tornado'];

  void addHero(String newHero) {
    if (newHero?.length > 0) {
      heroes.add(newHero);
    }
  }
}
