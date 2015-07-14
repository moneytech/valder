/* build.vapi generated by valac 0.28.0, do not modify. */

namespace bob {
	namespace builder {
		namespace build {
			namespace plugin {
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class BuildApplicationPlugin : bob.builder.build.plugin.AbstractBobBuildPlugin {
					public BuildApplicationPlugin ();
					public override void initialize (bob.builder.recipe.plugin.BobBuildPluginRecipe pluginRecipe) throws bob.builder.build.plugin.BobBuildPluginError;
					public override void run (bob.builder.recipe.project.BobBuildProjectRecipe projectRecipe, bob.builder.filesystem.DirectoryObject projectDirectory) throws bob.builder.build.plugin.BobBuildPluginError;
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class BuildConfiguration {
					public BuildConfiguration ();
					public void addCcOption (string ccOption);
					public void addDependency (bob.builder.recipe.project.BobBuildProjectDependency dependency);
					public void addSource (bob.builder.recipe.project.BobBuildProjectSourceFile source);
					public bool hasAnySources (string fileSuffix);
					public string[] ccOptions { get; set; }
					public bool debug { get; set; }
					public GLib.List<bob.builder.recipe.project.BobBuildProjectDependency> dependencies { get; }
					public bool generateVapi { get; set; }
					public string outputHFile { get; set; }
					public string outputVapiFile { get; set; }
					public bob.builder.recipe.project.BobBuildProjectDependencyScope scope { get; set; }
					public GLib.List<bob.builder.recipe.project.BobBuildProjectSourceFile> sources { get; }
					public string targetFile { get; set; }
					public bool verbose { get; set; }
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class BuildConfigurationBuilder {
					public delegate void BuildConfigurationDependencyBuilderDelegate (bob.builder.build.plugin.BuildConfigurationDependencyBuilder dependencyBuilder);
					public delegate void BuildConfigurationLibraryUsageBuilderDelegate (bob.builder.build.plugin.BuildConfigurationLibraryUsageBuilder libraryUsageBuilder);
					public BuildConfigurationBuilder ();
					public bob.builder.build.plugin.BuildConfiguration build ();
					public bob.builder.build.plugin.BuildConfigurationBuilder cHeaderFileName (string cHeaderFileName);
					public bob.builder.build.plugin.BuildConfigurationBuilder cOutputDirectory (string cOutputDirectory);
					public bob.builder.build.plugin.BuildConfigurationBuilder ccOption (string ccOption);
					public bob.builder.build.plugin.BuildConfigurationBuilder ccOptions (string[] ccOptions);
					public bob.builder.build.plugin.BuildConfigurationBuilder dependencies (GLib.List<bob.builder.recipe.project.BobBuildProjectDependency> dependencies);
					public bob.builder.build.plugin.BuildConfigurationBuilder dependency (bob.builder.build.plugin.BuildConfigurationBuilder.BuildConfigurationDependencyBuilderDelegate dependencyBuilderDelegate);
					public BuildConfigurationBuilder.fromJSONObject (bob.builder.json.JsonObject jsonObject);
					public bob.builder.build.plugin.BuildConfigurationBuilder generateVapiAndC ();
					public bob.builder.build.plugin.BuildConfigurationBuilder libraryScope ();
					public bob.builder.build.plugin.BuildConfigurationBuilder runtimeScope ();
					public bob.builder.build.plugin.BuildConfigurationBuilder sources (GLib.List<bob.builder.recipe.project.BobBuildProjectSourceFile> sources);
					public bob.builder.build.plugin.BuildConfigurationBuilder targetDirectory (string targetDirectory);
					public bob.builder.build.plugin.BuildConfigurationBuilder targetFileName (string targetFileName);
					public bob.builder.build.plugin.BuildConfigurationBuilder useLibrary (bob.builder.build.plugin.BuildConfigurationBuilder.BuildConfigurationLibraryUsageBuilderDelegate libraryUsageDelegate);
					public bob.builder.build.plugin.BuildConfigurationBuilder vapiOutputDirectory (string vapiOutputDirectory);
					public bob.builder.build.plugin.BuildConfigurationBuilder vapiOutputFileName (string vapiOutputFileName);
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class BuildConfigurationDependencyBuilder {
					public BuildConfigurationDependencyBuilder ();
					public bob.builder.recipe.project.BobBuildProjectDependency build ();
					public string cHeadersDirectory { get; set; }
					public string name { get; set; }
					public string vapiDirectory { get; set; }
					public string version { get; set; }
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class BuildConfigurationLibraryUsageBuilder {
					public BuildConfigurationLibraryUsageBuilder ();
					public void addLibraryUsageCcOptions (bob.builder.build.plugin.BuildConfigurationBuilder buildConfigurationBuilder);
					public string cHeadersDirectory { get; set; }
					public string name { get; set; }
					public bob.builder.recipe.project.BobBuildProjectDependencyScope scope { get; set; }
					public string vapiDirectory { get; set; }
					public string version { get; set; }
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class CCOptions {
					public CCOptions (string[] ccOptions);
					public void addCHeadersDirectoryLocation (string cHeadersDirectoryLocation);
					public void addCcOption (string ccOption);
					public void addDebugFlag ();
					public string[] getCcOptions ();
					public void useLibrary (string name);
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class DepenedencyDataTester : Vala.CodeVisitor {
					public DepenedencyDataTester (string package, string vapiFilePath);
					public void test ();
					public override void visit_class (Vala.Class clazz);
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class ValaCodeCompiler {
					public ValaCodeCompiler (bob.builder.build.plugin.BuildConfiguration buildConfiguration);
					public bob.builder.build.plugin.ValaCodeCompilerOutcome compile () throws bob.builder.build.plugin.CompilationError;
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public class ValaCodeCompilerOutcome {
					public ValaCodeCompilerOutcome ();
					public ValaCodeCompilerOutcome.@default ();
					public ValaCodeCompilerOutcome.noBinaryGenerated ();
					public bool binaryGenerated { get; set; }
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/DepenedencyDataTester.h")]
				public errordomain CompilationError {
					PARSING_ERROR,
					CCOMPILATION_ERROR
				}
			}
		}
	}
}
[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/plugin.h")]
public static void initializePlugin (bob.builder.build.plugin.BobBuildPluginLoader pluginLoader);
[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/plugin.h")]
public static string[] getDependencies ();
