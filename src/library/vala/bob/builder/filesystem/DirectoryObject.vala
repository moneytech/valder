using bob.builder.log;
using bob.builder.filesystem.visitor;

namespace bob.builder.filesystem {

	public class DirectoryObject : FileSystemObject {

		private const string CURRENT_DIRECTORY = ".";

		private Logger LOGGER = Logger.getLogger("DirectoryObject");

		public DirectoryObject(File directory) {
			base(directory);
		}

		public DirectoryObject.fromGivenLocation(string directoryLocation) {
			base(File.new_for_path(directoryLocation));
		}

		public DirectoryObject.fromCurrentLocation() {
			this.fromGivenLocation(CURRENT_DIRECTORY);
		}

		public DirectoryObject.fromUserHomeFolder() {
			this.fromGivenLocation(Environment.get_home_dir());
		}

		public void accept(FileSystemVisitor visitor) {
			visitor.visitDirectory(file);

			try {
				FileEnumerator enumerator = file.enumerate_children(FileAttribute.STANDARD_NAME, 0);
				FileInfo fileInfo;
				while ((fileInfo = enumerator.next_file()) != null) {
					File file = enumerator.get_child(fileInfo);
					if (isDirectory(fileInfo)) {
						new DirectoryObject(file).accept(visitor);
						continue;
					}
					new FileObject(file).accept(visitor);
				}
			}
			catch(Error e) {
				LOGGER.logError("An error occurred: %s", e.message);
			}
		}

		private bool isDirectory(FileInfo fileInfo) {
			return fileInfo.get_file_type() == FileType.DIRECTORY;
		}

		public bool hasChildWithName(string childName) {
			ObjectExistenceLookupVisitor existenceLookup = new ObjectExistenceLookupVisitor(childName);
			accept(existenceLookup);

			return existenceLookup.exists();
		}

		public DirectoryObject? getDirectoryChild(string childName) {
			DirectoryObjectLookupVisitor directoryLookup = new DirectoryObjectLookupVisitor(childName);
			accept(directoryLookup);

			return directoryLookup.getDirectory();
		}

		public DirectoryObject? getDirectoryChildAtLocation(string relativeLocation) {
			string nestedDirectoryLocation = "%s%C%s".printf(getLocation(), Path.DIR_SEPARATOR, relativeLocation);
			DirectoryObject nestedDirectory = new DirectoryObject.fromGivenLocation(nestedDirectoryLocation);
			if (!nestedDirectory.exists()) {
				return null;
			}
			return nestedDirectory;
		}

		public DirectoryObject newDirectoryChild(string childName) throws Error {
			File directoryChild = newChild(childName);
			directoryChild.make_directory();

			return new DirectoryObject(directoryChild);
		}

		public FileObject? getFileChild(string childName) {
			FileObjectLookupVisitor fileLookup = new FileObjectLookupVisitor(childName);
			accept(fileLookup);

			return fileLookup.getFile();
		}

		public FileObject newFileChild(string childName) {
			File fileChild = newChild(childName);
			
			return new FileObject(fileChild);
		}

		private File newChild(string childName) {
			return File.new_for_path("%s%C%s".printf(file.get_path(), Path.DIR_SEPARATOR, childName));
		}
	}
}