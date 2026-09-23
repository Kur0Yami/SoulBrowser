package com.google.api.client.util.store;

import com.google.api.client.util.IOUtils;
import com.google.api.client.util.Maps;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.AclEntry;
import java.nio.file.attribute.AclEntryPermission;
import java.nio.file.attribute.AclEntryType;
import java.nio.file.attribute.AclFileAttributeView;
import java.nio.file.attribute.FileOwnerAttributeView;
import java.nio.file.attribute.PosixFilePermission;
import java.nio.file.attribute.UserPrincipal;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class FileDataStoreFactory extends AbstractDataStoreFactory {
    private static final boolean IS_WINDOWS;
    private final File dataDirectory;

    /* loaded from: classes3.dex */
    public static class FileDataStore<V extends Serializable> extends AbstractMemoryDataStore<V> {
        private final File dataFile;

        public FileDataStore(FileDataStoreFactory fileDataStoreFactory, File file, String str) {
            super(fileDataStoreFactory, str);
            File file2 = new File(file, str);
            this.dataFile = file2;
            if (!IOUtils.isSymbolicLink(file2)) {
                if (file2.createNewFile()) {
                    this.keyValueMap = Maps.newHashMap();
                    save();
                    return;
                } else {
                    this.keyValueMap = (HashMap) IOUtils.deserialize(new FileInputStream(file2));
                    return;
                }
            }
            throw new IOException("unable to use a symbolic link: " + file2);
        }

        @Override // com.google.api.client.util.store.AbstractMemoryDataStore
        public void save() {
            IOUtils.serialize(this.keyValueMap, new FileOutputStream(this.dataFile));
        }

        @Override // com.google.api.client.util.store.AbstractDataStore, com.google.api.client.util.store.DataStore
        public FileDataStoreFactory getDataStoreFactory() {
            return (FileDataStoreFactory) super.getDataStoreFactory();
        }
    }

    static {
        try {
            IS_WINDOWS = System.getProperty("os.name").toLowerCase(Locale.ENGLISH).startsWith("windows");
        } catch (Throwable th) {
            Logger.getLogger(FileDataStoreFactory.class.getName()).severe(th.getMessage());
            throw th;
        }
    }

    public FileDataStoreFactory(File file) {
        File canonicalFile = file.getCanonicalFile();
        if (!IOUtils.isSymbolicLink(canonicalFile)) {
            if (!canonicalFile.exists() && !canonicalFile.mkdirs()) {
                throw new IOException("unable to create directory: " + canonicalFile);
            }
            this.dataDirectory = canonicalFile;
            if (IS_WINDOWS) {
                setPermissionsToOwnerOnlyWindows(canonicalFile);
                return;
            } else {
                setPermissionsToOwnerOnly(canonicalFile);
                return;
            }
        }
        throw new IOException("unable to use a symbolic link: " + canonicalFile);
    }

    private static void setPermissionsToOwnerOnly(File file) {
        HashSet hashSet = new HashSet();
        hashSet.add(PosixFilePermission.OWNER_READ);
        hashSet.add(PosixFilePermission.OWNER_WRITE);
        hashSet.add(PosixFilePermission.OWNER_EXECUTE);
        try {
            Files.setPosixFilePermissions(Paths.get(file.getAbsolutePath(), new String[0]), hashSet);
        } catch (RuntimeException e) {
            throw new IOException("Unable to set permissions for " + file, e);
        }
    }

    private static void setPermissionsToOwnerOnlyWindows(File file) {
        AclEntryType aclEntryType;
        Path path = Paths.get(file.getAbsolutePath(), new String[0]);
        UserPrincipal owner = ((FileOwnerAttributeView) Files.getFileAttributeView(path, FileOwnerAttributeView.class, new LinkOption[0])).getOwner();
        AclFileAttributeView aclFileAttributeView = (AclFileAttributeView) Files.getFileAttributeView(path, AclFileAttributeView.class, new LinkOption[0]);
        AclEntryPermission aclEntryPermission = AclEntryPermission.APPEND_DATA;
        AclEntryPermission aclEntryPermission2 = AclEntryPermission.DELETE;
        AclEntryPermission aclEntryPermission3 = AclEntryPermission.DELETE_CHILD;
        AclEntryPermission aclEntryPermission4 = AclEntryPermission.READ_ACL;
        AclEntryPermission aclEntryPermission5 = AclEntryPermission.READ_ATTRIBUTES;
        AclEntryPermission aclEntryPermission6 = AclEntryPermission.READ_DATA;
        AclEntryPermission[] aclEntryPermissionArr = {AclEntryPermission.READ_NAMED_ATTRS, AclEntryPermission.SYNCHRONIZE, AclEntryPermission.WRITE_ACL, AclEntryPermission.WRITE_ATTRIBUTES, AclEntryPermission.WRITE_DATA, AclEntryPermission.WRITE_NAMED_ATTRS, AclEntryPermission.WRITE_OWNER};
        int i = ImmutableSet.g;
        Object[] objArr = new Object[13];
        objArr[0] = aclEntryPermission;
        objArr[1] = aclEntryPermission2;
        objArr[2] = aclEntryPermission3;
        objArr[3] = aclEntryPermission4;
        objArr[4] = aclEntryPermission5;
        objArr[5] = aclEntryPermission6;
        System.arraycopy(aclEntryPermissionArr, 0, objArr, 6, 7);
        ImmutableSet s = ImmutableSet.s(13, objArr);
        AclEntry.Builder newBuilder = AclEntry.newBuilder();
        aclEntryType = AclEntryType.ALLOW;
        try {
            aclFileAttributeView.setAcl(ImmutableList.w(newBuilder.setType(aclEntryType).setPrincipal(owner).setPermissions(s).build()));
        } catch (SecurityException e) {
            throw new IOException("Unable to set permissions for " + file, e);
        }
    }

    @Override // com.google.api.client.util.store.AbstractDataStoreFactory
    public <V extends Serializable> DataStore<V> createDataStore(String str) {
        return new FileDataStore(this, this.dataDirectory, str);
    }

    public final File getDataDirectory() {
        return this.dataDirectory;
    }
}
