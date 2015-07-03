/* plugin-collect-sources-0.0.1.h generated by valac 0.28.0, the Vala compiler, do not modify */


#ifndef __SRC_LIBRARY_C_PLUGIN_COLLECT_SOURCES_0_0_1_H__
#define __SRC_LIBRARY_C_PLUGIN_COLLECT_SOURCES_0_0_1_H__

#include <glib.h>
#include <bob-0.0.1.h>
#include <stdlib.h>
#include <string.h>

G_BEGIN_DECLS


#define BOB_BUILDER_BUILD_PLUGIN_TYPE_COLLECT_SOURCES_PLUGIN (bob_builder_build_plugin_collect_sources_plugin_get_type ())
#define BOB_BUILDER_BUILD_PLUGIN_COLLECT_SOURCES_PLUGIN(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), BOB_BUILDER_BUILD_PLUGIN_TYPE_COLLECT_SOURCES_PLUGIN, bobbuilderbuildpluginCollectSourcesPlugin))
#define BOB_BUILDER_BUILD_PLUGIN_COLLECT_SOURCES_PLUGIN_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), BOB_BUILDER_BUILD_PLUGIN_TYPE_COLLECT_SOURCES_PLUGIN, bobbuilderbuildpluginCollectSourcesPluginClass))
#define BOB_BUILDER_BUILD_PLUGIN_IS_COLLECT_SOURCES_PLUGIN(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), BOB_BUILDER_BUILD_PLUGIN_TYPE_COLLECT_SOURCES_PLUGIN))
#define BOB_BUILDER_BUILD_PLUGIN_IS_COLLECT_SOURCES_PLUGIN_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), BOB_BUILDER_BUILD_PLUGIN_TYPE_COLLECT_SOURCES_PLUGIN))
#define BOB_BUILDER_BUILD_PLUGIN_COLLECT_SOURCES_PLUGIN_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), BOB_BUILDER_BUILD_PLUGIN_TYPE_COLLECT_SOURCES_PLUGIN, bobbuilderbuildpluginCollectSourcesPluginClass))

typedef struct _bobbuilderbuildpluginCollectSourcesPlugin bobbuilderbuildpluginCollectSourcesPlugin;
typedef struct _bobbuilderbuildpluginCollectSourcesPluginClass bobbuilderbuildpluginCollectSourcesPluginClass;
typedef struct _bobbuilderbuildpluginCollectSourcesPluginPrivate bobbuilderbuildpluginCollectSourcesPluginPrivate;

#define BOB_BUILDER_BUILD_PLUGIN_TYPE_VALA_FILES_VISITOR (bob_builder_build_plugin_vala_files_visitor_get_type ())
#define BOB_BUILDER_BUILD_PLUGIN_VALA_FILES_VISITOR(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), BOB_BUILDER_BUILD_PLUGIN_TYPE_VALA_FILES_VISITOR, bobbuilderbuildpluginValaFilesVisitor))
#define BOB_BUILDER_BUILD_PLUGIN_VALA_FILES_VISITOR_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), BOB_BUILDER_BUILD_PLUGIN_TYPE_VALA_FILES_VISITOR, bobbuilderbuildpluginValaFilesVisitorClass))
#define BOB_BUILDER_BUILD_PLUGIN_IS_VALA_FILES_VISITOR(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), BOB_BUILDER_BUILD_PLUGIN_TYPE_VALA_FILES_VISITOR))
#define BOB_BUILDER_BUILD_PLUGIN_IS_VALA_FILES_VISITOR_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), BOB_BUILDER_BUILD_PLUGIN_TYPE_VALA_FILES_VISITOR))
#define BOB_BUILDER_BUILD_PLUGIN_VALA_FILES_VISITOR_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), BOB_BUILDER_BUILD_PLUGIN_TYPE_VALA_FILES_VISITOR, bobbuilderbuildpluginValaFilesVisitorClass))

typedef struct _bobbuilderbuildpluginValaFilesVisitor bobbuilderbuildpluginValaFilesVisitor;
typedef struct _bobbuilderbuildpluginValaFilesVisitorClass bobbuilderbuildpluginValaFilesVisitorClass;
typedef struct _bobbuilderbuildpluginValaFilesVisitorPrivate bobbuilderbuildpluginValaFilesVisitorPrivate;

struct _bobbuilderbuildpluginCollectSourcesPlugin {
	bobbuilderbuildpluginAbstractBobBuildPlugin parent_instance;
	bobbuilderbuildpluginCollectSourcesPluginPrivate * priv;
};

struct _bobbuilderbuildpluginCollectSourcesPluginClass {
	bobbuilderbuildpluginAbstractBobBuildPluginClass parent_class;
};

struct _bobbuilderbuildpluginValaFilesVisitor {
	bobbuilderfilesystemvisitorFileSystemFilteringVisitor parent_instance;
	bobbuilderbuildpluginValaFilesVisitorPrivate * priv;
};

struct _bobbuilderbuildpluginValaFilesVisitorClass {
	bobbuilderfilesystemvisitorFileSystemFilteringVisitorClass parent_class;
};


GType bob_builder_build_plugin_collect_sources_plugin_get_type (void) G_GNUC_CONST;
bobbuilderbuildpluginCollectSourcesPlugin* bob_builder_build_plugin_collect_sources_plugin_new (void);
bobbuilderbuildpluginCollectSourcesPlugin* bob_builder_build_plugin_collect_sources_plugin_construct (GType object_type);
GType bob_builder_build_plugin_vala_files_visitor_get_type (void) G_GNUC_CONST;
bobbuilderbuildpluginValaFilesVisitor* bob_builder_build_plugin_vala_files_visitor_new (const gchar* valaFilesDirectory);
bobbuilderbuildpluginValaFilesVisitor* bob_builder_build_plugin_vala_files_visitor_construct (GType object_type, const gchar* valaFilesDirectory);
void bob_builder_build_plugin_vala_files_visitor_collectSourceFiles (bobbuilderbuildpluginValaFilesVisitor* self, GError** error);
void initializePlugin (bobbuilderbuildpluginBobBuildPluginLoader* pluginsLoader);
gchar** getDependencies (int* result_length1);


G_END_DECLS

#endif
