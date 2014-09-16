using com.futureprocessing.bob;

namespace com.futureprocessing.bob.recipe {

     public class BobRecipeBuildSource : Object {
        
        public BobRecipeBuildSource(File file) {
            Object(filePath: file.get_path(), fileName: file.get_basename());
        }
     
        public string filePath { get; construct; }
        public string fileName { get; construct; }                
    }

     public class BobRecipeBuildDependency {
        public static BobRecipeBuildDependency fromJSONObject(Json.Object jsonObject) {
            BobRecipeBuildDependency dependency = new BobRecipeBuildDependency();
			dependency.dependency = jsonObject.get_string_member("dependency");
			dependency.version = jsonObject.get_string_member("version");
			dependency.dependencyType = jsonObject.get_string_member("type");
			return dependency;
        }
        
        public string to_string() {
            return "%s-%s".printf(dependency, version);
        }
    
        public string dependency { get; set; }
        public string version { get; set; }
		public string dependencyType { get; set; }
    }

	public class BobRecipeBuildConfiguration {

		public static BobRecipeBuildConfiguration fromJSONObject(Json.Object jsonObject) {
            BobRecipeBuildConfiguration buildConfiguration = new BobRecipeBuildConfiguration();
            buildConfiguration.readDependencies(buildConfiguration, jsonObject);
                
		    buildConfiguration.target = jsonObject.get_string_member("target");
            return buildConfiguration;
		}
   	
    	private void readDependencies(BobRecipeBuildConfiguration buildConfiguration, Json.Object jsonObject) {
    		Json.Array dependencies = jsonObject.get_array_member("dependencies");
            foreach (Json.Node dependencyNode in dependencies.get_elements()) {
                buildConfiguration.addDependencyFromJSONObject(dependencyNode.get_object());
            }
    	}
		
		private void addDependencyFromJSONObject(Json.Object jsonObject) {
		    dependencies.append(BobRecipeBuildDependency.fromJSONObject(jsonObject));
		}
		
		public void addSourceFile(File sourceFile) {
		    BobRecipeBuildSource newSource = new BobRecipeBuildSource(sourceFile);
		    sources.append(newSource);
		}
		
		public unowned List<BobRecipeBuildDependency> dependencies { get; set; default = new List<BobRecipeBuildDependency>(); }
		public unowned List<BobRecipeBuildSource> sources { get; set; default = new List<BobRecipeBuildSource>(); }
		public string target { get; set; }
	}	
}