package com.todov3.controller;

import com.todov3.entity.Task;
import com.todov3.repository.TaskRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/task")
public class TaskController {
    private TaskRepository taskRepository;
    public TaskController(TaskRepository taskRepository){
        this.taskRepository=taskRepository;
    }
    @GetMapping("/add")
    public String addTask() {
        return "task_form";
    }

    @PostMapping("/add")
    public String addTask(@RequestParam String name,
                          @RequestParam String description,
                          @RequestParam String priority,
                          @RequestParam boolean done) {
      // public Task(String name, String description, String priority, boolean done) {

        Task task = new Task(name,description,priority,done);
        taskRepository.save(task);
        return "redirect:/task/";
    }

    @GetMapping("/")
    public String getTaskList(Model model) {
        List<Task> taskList = taskRepository.findAll();
        model.addAttribute("taskList", taskList);
        return "task_list";
    }

    @GetMapping("/edit/{id}")
    public String getTaskEdit(Model model,@PathVariable Long id) {
        Optional<Task> task = taskRepository.findById(id);
        task.ifPresent(t -> model.addAttribute("task", t));
        return "task_edit";
    }

    @PostMapping("/edit/{id}")
    public String postTaskEdit(@PathVariable Long id,
                               @RequestParam String name,
                               @RequestParam String description,
                               @RequestParam String priority,
                               @RequestParam boolean done) {
        Optional<Task> task = taskRepository.findById(id);
        task.ifPresent(t -> {
            t.setName(name);
            t.setDescription(description);
            t.setPriority(priority);
            t.setDone(done);
            taskRepository.save(t);
        });
        return "redirect:/task/";
    }

    @GetMapping("/delete/{id}")
    public String deleteTask(@PathVariable Long id, Model model) {
        Optional<Task> task = taskRepository.findById(id);
        task.ifPresent(t -> model.addAttribute("task", t));
        return "task_delete";
    }

    @PostMapping("/delete/{id}")
    public String deleteTask(@PathVariable Long id, @RequestParam(required = false) Optional<String> delete){
        delete.ifPresent(s -> {
            taskRepository.deleteById(id);
        });
        return "redirect:/task/";
    }
}