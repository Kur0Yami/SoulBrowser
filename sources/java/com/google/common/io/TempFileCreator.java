package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Throwables;
import com.google.common.collect.ImmutableList;
import com.google.common.io.TempFileCreator;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.FileSystems;
import java.nio.file.Paths;
import java.nio.file.attribute.AclEntry;
import java.nio.file.attribute.AclEntryType;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.UserPrincipal;
import java.util.Set;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
abstract class TempFileCreator {

    /* renamed from: a */
    public static final TempFileCreator f12482a;

    /* loaded from: classes3.dex */
    public static final class JavaIoCreator extends TempFileCreator {
        @Override // com.google.common.io.TempFileCreator
        public final File a() {
            return File.createTempFile("FileBackedOutputStream", null, null);
        }
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class JavaNioCreator extends TempFileCreator {
        public static final PermissionSupplier b;

        /* renamed from: c */
        public static final PermissionSupplier f12483c = null;

        /* renamed from: com.google.common.io.TempFileCreator$JavaNioCreator$1 */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements FileAttribute<ImmutableList<AclEntry>> {
            public AnonymousClass1() {
            }

            @Override // java.nio.file.attribute.FileAttribute
            public final String name() {
                return "acl:acl";
            }

            @Override // java.nio.file.attribute.FileAttribute
            public final ImmutableList<AclEntry> value() {
                return ImmutableList.this;
            }
        }

        @IgnoreJRERequirement
        /* loaded from: classes3.dex */
        public interface PermissionSupplier {
            FileAttribute get();
        }

        static {
            PermissionSupplier permissionSupplier;
            AclEntryType aclEntryType;
            Set<String> supportedFileAttributeViews = FileSystems.getDefault().supportedFileAttributeViews();
            if (supportedFileAttributeViews.contains("posix")) {
                b = new a(1);
                return;
            }
            if (supportedFileAttributeViews.contains("acl")) {
                try {
                    UserPrincipal lookupPrincipalByName = FileSystems.getDefault().getUserPrincipalLookupService().lookupPrincipalByName(d());
                    AclEntry.Builder newBuilder = AclEntry.newBuilder();
                    aclEntryType = AclEntryType.ALLOW;
                    final AnonymousClass1 anonymousClass1 = new FileAttribute<ImmutableList<AclEntry>>() { // from class: com.google.common.io.TempFileCreator.JavaNioCreator.1
                        public AnonymousClass1() {
                        }

                        @Override // java.nio.file.attribute.FileAttribute
                        public final String name() {
                            return "acl:acl";
                        }

                        @Override // java.nio.file.attribute.FileAttribute
                        public final ImmutableList<AclEntry> value() {
                            return ImmutableList.this;
                        }
                    };
                    final int i = 0;
                    permissionSupplier = new PermissionSupplier() { // from class: com.google.common.io.b
                        @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                        public final FileAttribute get() {
                            int i2 = i;
                            Object obj = anonymousClass1;
                            switch (i2) {
                                case 0:
                                    FileAttribute fileAttribute = (FileAttribute) obj;
                                    TempFileCreator.JavaNioCreator.PermissionSupplier permissionSupplier2 = TempFileCreator.JavaNioCreator.b;
                                    return fileAttribute;
                                default:
                                    TempFileCreator.JavaNioCreator.PermissionSupplier permissionSupplier3 = TempFileCreator.JavaNioCreator.b;
                                    throw new IOException("Could not find user", (IOException) obj);
                            }
                        }
                    };
                } catch (IOException e) {
                    final int i2 = 1;
                    permissionSupplier = new PermissionSupplier() { // from class: com.google.common.io.b
                        @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
                        public final FileAttribute get() {
                            int i22 = i2;
                            Object obj = e;
                            switch (i22) {
                                case 0:
                                    FileAttribute fileAttribute = (FileAttribute) obj;
                                    TempFileCreator.JavaNioCreator.PermissionSupplier permissionSupplier2 = TempFileCreator.JavaNioCreator.b;
                                    return fileAttribute;
                                default:
                                    TempFileCreator.JavaNioCreator.PermissionSupplier permissionSupplier3 = TempFileCreator.JavaNioCreator.b;
                                    throw new IOException("Could not find user", (IOException) obj);
                            }
                        }
                    };
                }
                b = permissionSupplier;
                return;
            }
            b = new a(2);
        }

        public static /* synthetic */ void c() {
            throw new IOException("unrecognized FileSystem type " + FileSystems.getDefault());
        }

        public static String d() {
            String property = System.getProperty("user.name");
            Objects.requireNonNull(property);
            try {
                Class<?> cls = Class.forName("java.lang.ProcessHandle");
                Class<?> cls2 = Class.forName("java.lang.ProcessHandle$Info");
                Class<?> cls3 = Class.forName("j$.util.Optional");
                Method method = cls.getMethod("current", null);
                Method method2 = cls.getMethod("info", null);
                Object invoke = cls3.getMethod("orElse", Object.class).invoke(cls2.getMethod("user", null).invoke(method2.invoke(method.invoke(null, null), null), null), property);
                Objects.requireNonNull(invoke);
                return (String) invoke;
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException unused) {
                return property;
            } catch (InvocationTargetException e) {
                Throwables.a(e.getCause());
                return property;
            }
        }

        @Override // com.google.common.io.TempFileCreator
        public final File a() {
            return java.nio.file.Files.createTempFile(Paths.get(System.getProperty("java.io.tmpdir"), new String[0]), "FileBackedOutputStream", null, b.get()).toFile();
        }
    }

    /* loaded from: classes3.dex */
    public static final class ThrowingCreator extends TempFileCreator {
        @Override // com.google.common.io.TempFileCreator
        public final File a() {
            throw new IOException("Guava cannot securely create temporary files or directories under SDK versions before Jelly Bean. You can create one yourself, either in the insecure default directory or in a more secure directory, such as context.getCacheDir(). For more information, see the Javadoc for Files.createTempDir().");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.common.io.TempFileCreator] */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    static {
        ?? r0;
        try {
            try {
                Class.forName("java.nio.file.Path");
                r0 = new Object();
            } catch (ClassNotFoundException unused) {
                if (((Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null)).intValue() < ((Integer) Class.forName("android.os.Build$VERSION_CODES").getField("JELLY_BEAN").get(null)).intValue()) {
                    r0 = new Object();
                } else {
                    r0 = new Object();
                }
            }
        } catch (ClassNotFoundException unused2) {
            r0 = new Object();
        } catch (IllegalAccessException unused3) {
            r0 = new Object();
        } catch (NoSuchFieldException unused4) {
            r0 = new Object();
        }
        f12482a = r0;
    }

    public abstract File a();
}
