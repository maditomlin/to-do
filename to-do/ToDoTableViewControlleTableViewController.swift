

import UIKit

class ToDoTableViewControlleTableViewController: UITableViewController {
    var toDos : [ToDo] = []
}

    func createToDos() -> [ToDo] {

      let swift = ToDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = ToDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
    
func viewDidLoad() {}
         func viewDidLoad() {
          super.viewDidLoad()

          toDos = createToDos()
        }
       super.viewDidLoad()

        

     func numberOfSections(in tableView: UITableView) -> Int {
        
        return 0
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

         let toDo = toDos[indexPath.row]

         return cell
       }
         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return toDos.count
        }
        
        return 0
    }

 
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

  let toDo = toDos[indexPath.row]

  if toDo.important {
    cell.textLabel?.text = "❗️" + toDo.name
  } else {
    cell.textLabel?.text = toDo.name
  }

  return cell
}
