package com.example.tech9_survey.controller;

import com.example.tech9_survey.domain.User;
import com.example.tech9_survey.service.UserService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;
import java.nio.file.Paths;

@Controller
@RequestMapping("/upload")
public class UploadController {

    private UserService userService;

    public UploadController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping
    @ResponseBody
    public ResponseEntity<Object> uploadFile(@RequestParam("file") MultipartFile uploadFile) {
        try {
            String filename = uploadFile.getOriginalFilename();
            String directory = "D:\\user_images";
            String filePath = Paths.get(directory, filename).toString();

            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
            stream.write(uploadFile.getBytes());
            stream.close();

            User loggedUser = userService.getLoggedInUser();
            loggedUser.setImageUrl(null);
            loggedUser.setImageUrl(filePath);
            userService.save(loggedUser);
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<>(HttpStatus.OK);
    }

    @GetMapping(value = "/image/{username}", produces = "image/jpg")
    public @ResponseBody byte[] getFile(@PathVariable("username") String username)  {
        try {
            User user;

            if (username.equals("false")) {
                user = userService.getLoggedInUser();
            } else {
                user = userService.findByUsername(username);
            }

            String filePath = Paths.get(user.getImageUrl()).toString();
            System.out.println(filePath);

            InputStream is = new FileInputStream(new File(filePath));

            BufferedImage img = ImageIO.read(is);

            ByteArrayOutputStream bao = new ByteArrayOutputStream();

            ImageIO.write(img, "jpg", bao);

            return bao.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
