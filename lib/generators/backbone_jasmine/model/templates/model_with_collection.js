describe('<%= model_name %> model', function() {

  beforeEach(function() {

    this.<%=model_name%> = new <%=model_name.capitalize%>({
      my_attribute: "my_value"
    });

  });

  describe('when instantiated with an attribute', function() {
    it('should see an attribute', function() {
      expect(this.<%=model_name%>.get('my_attribute')).toEqual("my_value");
    });

  });

  describe("url", function() {

    describe("when no id is set", function() {
      it("should return the collection URL", function() {
        expect(this.<%=model_name%>.url()).toEqual("/<%=model_name%>");
      });
    });

    describe("when id is set", function() {
      it("should return the collection URL and id", function() {
        this.<%=model_name%>.id = 1;
        expect(this.<%=model_name%>.url()).toEqual("/<%=model_name.pluralize%>/1");
      });
    });
  });
});
