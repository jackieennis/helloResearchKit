//
//  ViewController.swift
//  helloResearchKit
//
//  Created by Jackie Ennis on 10/26/16.
//  Copyright © 2016 Jackie Ennis. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let step = ORKQuestionStep(identifier: "yes-no-step")
        step.title = NSLocalizedString("How do you feel?", comment: "")
        step.answerFormat = ORKBooleanAnswerFormat()
        let task = ORKOrderedTask(identifier: "yes-no-task", steps: [step])
        let taskViewController = ORKTaskViewController(task: task, taskRun: nil)
        present(taskViewController, animated: true, completion: nil)
        super.viewDidLoad()
    }

    func taskViewController(taskViewController: ORKTaskViewController,
                            didFinishWithReason reason: ORKTaskViewControllerFinishReason,
                            error: NSError?) {
        let taskResult = taskViewController.result
        // You could do something with the result here.
        
        // Then, dismiss the task view controller.
        dismiss(animated: true, completion: nil)
    }
}

