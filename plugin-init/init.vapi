/* init.vapi generated by valac 0.28.0, do not modify. */

namespace bob {
	namespace builder {
		namespace build {
			namespace plugin {
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/InitializeProjectStructurePlugin.h")]
				public class DirectoryBuilder {
					public delegate void DirectoryBuilderDelegate (bob.builder.build.plugin.DirectoryBuilder directoryBuilder);
					public DirectoryBuilder (bob.builder.filesystem.DirectoryObject parentDirectory);
					public void directory (bob.builder.build.plugin.DirectoryBuilder.DirectoryBuilderDelegate directoryBuilderDelegate);
					public bob.builder.filesystem.DirectoryObject getOrCreate ();
					public bob.builder.build.plugin.DirectoryBuilder name (string directoryName);
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/InitializeProjectStructurePlugin.h")]
				public class InitializeProjectStructurePlugin : bob.builder.build.plugin.AbstractBobBuildPlugin {
					public InitializeProjectStructurePlugin ();
					public override void initialize (bob.builder.recipe.plugin.BobBuildPluginRecipe pluginRecipe) throws bob.builder.build.plugin.BobBuildPluginError;
					public override void run (bob.builder.recipe.project.BobBuildProjectRecipe projectRecipe, bob.builder.filesystem.DirectoryObject projectDirectory) throws bob.builder.build.plugin.BobBuildPluginError;
				}
				[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/InitializeProjectStructurePlugin.h")]
				public class ProjectDirectoryStructureBuilder {
					public void directory (bob.builder.build.plugin.DirectoryBuilder.DirectoryBuilderDelegate directoryBuilderDelegate);
					public static bob.builder.build.plugin.ProjectDirectoryStructureBuilder projectDirectory (bob.builder.filesystem.DirectoryObject projectDirectory);
				}
			}
		}
	}
}
[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/plugin.h")]
public static void initializePlugin (bob.builder.build.plugin.BobBuildPluginLoader pluginsLoader);
[CCode (cheader_filename = "src/library/vala/bob/builder/build/plugin/plugin.h")]
public static string[] getDependencies ();
