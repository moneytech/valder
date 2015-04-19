using bob.builder.recipe.project;

namespace bob.builder.build.plugin {

	public class BuildConfiguration {

		private List<BobBuildProjectDependency> _dependencies = new List<BobBuildProjectDependency>();
		private List<BobBuildProjectSourceFile> _sources = new List<BobBuildProjectSourceFile>();

		public string targetFile {
			get;
			set;
		}

		public bool verbose {
			get;
			set;
			default = false;
		}

		public string[] ccOptions {
			get;
			set;
			default = new string[0];
		}

		public List<BobBuildProjectDependency> dependencies {
			get {
				return _dependencies;
			}
		}

		public void addDependency(BobBuildProjectDependency dependency) {
			_dependencies.append(dependency);
		}

		public List<BobBuildProjectSourceFile> sources {
			get {
				return _sources;
			}
		}

		public void addSource(BobBuildProjectSourceFile source) {
			_sources.append(source);
		}
	}
}