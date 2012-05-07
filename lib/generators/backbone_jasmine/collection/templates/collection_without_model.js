describe('<%=class_name%> Collection', function() {
  describe("when instantiated with model literal", function() {
    beforeEach(function() {
      MyModel = Backbone.Model.extend({
        validate: function(attrs) {
          if (!attrs.my_attribute) {
            return "cannot have an empty my_attribute";
          }
        }
      });
      this.myModelStub = sinon.stub(window, "MyModel");
      this.model = new Backbone.Model({
        id: 5,
        my_attribute: "Foo"
      });
      this.myModelStub.returns(this.model);
      this.<%=instance_name%> = new <%=class_name%>();
      this.<%=instance_name%>.model = MyModel; // reset model relationship to use stub
      this.<%=instance_name%>.add({
        id: 5,
        my_attribute: "Foo"
      });
    });

    afterEach(function() {
      this.myModelStub.restore();
    });
    
    it("should add a model", function() {
      expect(this.<%=instance_name%>.length).toEqual(1);
    });
      
    it("should find a model by id", function() {
      expect(this.<%=instance_name%>.get(5).get("id")).toEqual(5);
    });
  });
});
