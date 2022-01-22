/SPDX-License-Identifier: MIT;

//solidity version
pragma solidity ^0.8.0;

//todolist that can create new task ,return a list of created tasks
contract ToDoList {

    //struct is an object in solidity
    //creating task object with properties
    struct Task{
        uint id;
        uint date;
        string content;
        string author;
        bool done;

    }

    //creating a dynamic array to contain a list of tasks
    Task[] taskArray;

    //function to create a task
    //date is accessed by block.timestamp
    //taskArray.length enumerates the task according to index of array
    function createTask(string memory _content,string memory _author)public{
        taskArray.push(Task(taskArray.length,block.timestamp,_content,_author,false));
    }

    //getter function to see the deployed task
    function getTask(uint id) public view returns(uint,uint,string memory,string memory ,bool){
        return (id,taskArray[id].date,taskArray[id].content,taskArray[id].author,taskArray[id].done);
    }

    //function to return all task at once
    function getAllTasks() public view returns(Task[] memory){
        return taskArray;
    }
}
