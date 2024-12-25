# mvvm_project

Flutter's Clean Architecture MVVM example with Provider.

## Getting Started

The project is divided in 3 main layers:
 - presenter
 - data
 - domain

 The presenter layer is responsible for the UI and the business logic. It is divided in 2 main parts:
 - view: the UI
 - viewmodel: the business logic

The data layer is responsible for the data. It is divided in 2 main parts:
 - repository: the data source
 - model: the data model that requires any library data dependency like data base objects, network objects, etc.
You can also include DAOs, API services, etc. as sub layers in this area.

The domain layer is responsible for the business logic. It is divided in 2 main parts:
 - usecase: the business logic. In this case it was not added because the viewModel is usually responsible for the business logic.
 - model: the business model. This PODOs cannot have any library data dependency. All the views should depend on this objects and not on the data layer objects.