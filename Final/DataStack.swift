//
//  DataStack.swift
//  Final
//
//  Created by MacStudent on 2020-01-22.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
import CoreData

final class CoreDataStack
{
    
    private let modelName: String
    
    init(modelName: String) {
        self.modelName = modelName
    }
    
    lazy var managedContext: NSManagedObjectContext = {
        return self.storeContainer.viewContext
      }()

      private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: self.modelName)
        container.loadPersistentStores { (storeDescription, error) in
          if let error = error as NSError? {
            print("Unresolved error \(error), \(error.userInfo)")
          }
        }
        return container
      }()

      func saveContext () {
        guard managedContext.hasChanges else { return }
        do {
          try managedContext.save()
        } catch let error as NSError {
          print("Unresolved error \(error), \(error.userInfo)")
        }
      }
    }
