(function(){
  angular.module('app')
    .controller('SurveyCustomizationController', SurveyCustomizationController);

  SurveyCustomizationController.$inject = ['SurveyService', 'QuestionService', 'AnswerService', '$location', '$routeParams'];

  function SurveyCustomizationController(SurveyService, QuestionService, AnswerService, $location, $routeParams) {

    var self = this;
    self.saveSurvey = saveSurvey;
    self.createQuestion = createQuestion;
    self.saveQuestion = saveQuestion;
    self.deleteQuestion = deleteQuestion;
    self.createAnswer = createAnswer;
    self.saveAnswer = saveAnswer;
    self.deleteAnswer = deleteAnswer;

    init();

    function init() {
      self.surveyHashedId = $routeParams.hashedId;
      self.questions = [];

      SurveyService.getCurrentSurvey(self.surveyHashedId)
        .then(
        function(response){
          self.survey = response;
        });
    }

    function saveSurvey() {
      var location = $location.path().replace("new", "new/finish");
      $location.path(location);
    }

    function createQuestion(surveyId) {
      if (self.questions.length < 10) {
        var newQuestion = {
          answers: []
        };
        newQuestion = self.saveQuestion(surveyId, newQuestion);
        self.questions.push(newQuestion);
      }
    }

    function saveQuestion(surveyId, question) {
      var returnQuestion = {};

      QuestionService.saveQuestion(surveyId, question)
        .then(
        function(response){
          angular.copy(response, returnQuestion);
        }, 
        function(error){
          console.log(error);
        })

      return returnQuestion;
    }

    function deleteQuestion(question) {
      QuestionService.deleteQuestion(question.id)
        .then(
        function(response){

        }, 
        function(error){
          console.log(error);
        })
    }

    function createAnswer(questionPositionInSurvey, questionId) {
      console.log(self.questions[questionPositionInSurvey]);
      if (self.questions[questionPositionInSurvey].answers.length < 10) {
        var newAnswer = self.saveAnswer(questionId, {});
        self.questions[questionPositionInSurvey].answers.push(newAnswer);
      }
    }

    function saveAnswer(questionPosition, answer) {
      var returnAnswer = {};

      AnswerService.saveAnswer(questionPosition, answer)
        .then(
        function(response){
          angular.copy(response, returnAnswer);
        }, 
        function(error){
          console.log(error);
        })

      return returnAnswer;
    }

    function deleteAnswer(answer) {
      AnswerService.deleteAnswer(answer.id)
        .then(
        function(response){

        }, 
        function(error){
          console.log(error);
        })
    }

  };
})();