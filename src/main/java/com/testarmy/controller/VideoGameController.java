package com.testarmy.controller;

import com.testarmy.entity.VideoGame;
import com.testarmy.repository.VideoGameRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/game")
public class VideoGameController{
  private VideoGameRepository videoGameRepository;
  public VideoGameController(VideoGameRepository videoGameRepository){
    this.videoGameRepository=videoGameRepository;
  }
  @GetMapping("/add")
    public String addGame(Model model){
      VideoGame videoGame = new VideoGame();
      model.addAttribute("videoGame", videoGame);
      return "video_game_form";

  }
  @PostMapping("/save")
  public String saveGame(@ModelAttribute VideoGame videoGame){
    videoGameRepository.save(videoGame);
    return "redirect:/game/";
  }
  @GetMapping("/")
  public String games (Model model){
    List<VideoGame> gameList = videoGameRepository.findAll();
    model.addAttribute("gameList", gameList);
    return "video_game_list";
  }
  @GetMapping("/edit/{id}")
  public String editGame(Model model, @PathVariable Long id){
    Optional<VideoGame> videoGame = videoGameRepository.findById(id);
    videoGame.ifPresent(g-> model.addAttribute("videoGame", videoGame));
    return "video_game_form";
  }
}
