using bob.builder.recipe.project;
using bob.builder.json;
using bob.builder.filesystem;

namespace bob.builder.build.plugin {

	public class BuildConfigurationDependencyBuilder {
		
		public string name { get; set; }
		public string version { get; set; }
		public string vapiDirectory { get; set; }
		public string cHeadersDirectory { get; set; }

		public BobBuildProjectDependency build() {
			BobBuildProjectDependency newPkgDependency = new BobBuildProjectDependency();
			newPkgDependency.dependency = name;
			newPkgDependency.version = version;
			newPkgDependency.vapiDirectory = vapiDirectory;
			newPkgDependency.cHeadersDirectory = cHeadersDirectory;
			return newPkgDependency;
		}

	}
}