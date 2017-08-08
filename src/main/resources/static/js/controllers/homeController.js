(function(){
  angular.module('app')
    .controller('HomeController', HomeController);

  HomeController.$inject = ['SurveyService', '$location'];

  function HomeController(SurveyService, $location) {

    this.generateSurvey = generateSurvey;

    function generateSurvey(newSurvey) {
      SurveyService.generateSurvey(newSurvey)
        .then(
        function(response){
          $location.path('/survey/create/' + response.hashedId);
      }, 
        function(error){
          console.log(error);
      })
    }  

  };
})();