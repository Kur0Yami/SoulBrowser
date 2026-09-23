package org.apache.commons.compress.archivers.zip;

import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.zip.ZipException;

/* loaded from: classes4.dex */
public class ExtraFieldUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f22281a = new ConcurrentHashMap();

    /* loaded from: classes4.dex */
    public static final class UnparseableExtraField {
    }

    static {
        c(AsiExtraField.class);
        c(X5455_ExtendedTimestamp.class);
        c(X7875_NewUnix.class);
        c(JarMarker.class);
        c(UnicodePathExtraField.class);
        c(UnicodeCommentExtraField.class);
        c(Zip64ExtendedInformationExtraField.class);
        c(X000A_NTFS.class);
        c(X0014_X509Certificates.class);
        c(X0015_CertificateIdForFile.class);
        c(X0016_CertificateIdForCentralDirectory.class);
        c(X0017_StrongEncryptionHeader.class);
        c(X0019_EncryptionRecipientCertificateList.class);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [org.apache.commons.compress.archivers.zip.ZipExtraField, java.lang.Object, org.apache.commons.compress.archivers.zip.UnrecognizedExtraField] */
    public static ZipExtraField a(ZipShort zipShort) {
        Class cls = (Class) f22281a.get(zipShort);
        if (cls != null) {
            try {
                return (ZipExtraField) cls.getDeclaredConstructor(null).newInstance(null);
            } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException unused) {
            }
        }
        ?? obj = new Object();
        obj.f22292c = zipShort;
        return obj;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, org.apache.commons.compress.archivers.zip.UnparseableExtraFieldData] */
    public static ZipExtraField[] b(byte[] bArr, boolean z) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            if (i > bArr.length - 4) {
                break;
            }
            ZipShort zipShort = new ZipShort(bArr, i);
            int i2 = i + 4;
            int i3 = new ZipShort(bArr, i + 2).f22313c;
            if (i2 + i3 > bArr.length) {
                ?? obj = new Object();
                if (z) {
                    obj.c(bArr, i, bArr.length - i);
                } else {
                    obj.g(bArr, i, bArr.length - i);
                }
                arrayList.add(obj);
            } else {
                try {
                    ZipExtraField a2 = a(zipShort);
                    if (z) {
                        a2.c(bArr, i2, i3);
                    } else {
                        a2.g(bArr, i2, i3);
                    }
                    arrayList.add(a2);
                    i += i3 + 4;
                } catch (IllegalAccessException e) {
                    throw ((ZipException) new ZipException(e.getMessage()).initCause(e));
                } catch (InstantiationException e2) {
                    throw ((ZipException) new ZipException(e2.getMessage()).initCause(e2));
                }
            }
        }
        return (ZipExtraField[]) arrayList.toArray(new ZipExtraField[arrayList.size()]);
    }

    public static void c(Class cls) {
        try {
            f22281a.put(((ZipExtraField) cls.getDeclaredConstructor(null).newInstance(null)).a(), cls);
        } catch (ClassCastException unused) {
            throw new RuntimeException(cls + " doesn't implement ZipExtraField");
        } catch (IllegalAccessException unused2) {
            throw new RuntimeException(cls + "'s no-arg constructor is not public");
        } catch (IllegalArgumentException unused3) {
            throw new RuntimeException(cls + " is not a concrete class");
        } catch (InstantiationException unused4) {
            throw new RuntimeException(cls + " is not a concrete class");
        } catch (NoSuchMethodException unused5) {
            throw new RuntimeException(cls + " is not a concrete class");
        } catch (SecurityException unused6) {
            throw new RuntimeException(cls + " is not a concrete class");
        } catch (InvocationTargetException unused7) {
            throw new RuntimeException(cls + " is not a concrete class");
        }
    }
}
