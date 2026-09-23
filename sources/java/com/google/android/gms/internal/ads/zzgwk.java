package com.google.android.gms.internal.ads;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class zzgwk {
    public static void a(File file, byte[] bArr) {
        file.getClass();
        zzgtn u = zzgtn.u(new zzgwh[0]);
        bArr.getClass();
        FileOutputStream fileOutputStream = new FileOutputStream(file, u.contains(zzgwh.f8274c));
        try {
            fileOutputStream.write(bArr);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void b(File file) {
        file.getClass();
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (parentFile.isDirectory()) {
            } else {
                throw new IOException("Unable to create parent directories of ".concat(file.toString()));
            }
        }
    }

    public static void c(File file, File file2) {
        file.getClass();
        file2.getClass();
        if (!file.equals(file2)) {
            if (!file.renameTo(file2)) {
                if (!file.equals(file2)) {
                    zzgtn u = zzgtn.u(new zzgwh[0]);
                    zzgwg zzgwgVar = new zzgwg();
                    ArrayDeque arrayDeque = zzgwgVar.f8273c;
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        arrayDeque.addFirst(fileInputStream);
                        FileOutputStream fileOutputStream = new FileOutputStream(file2, u.contains(zzgwh.f8274c));
                        arrayDeque.addFirst(fileOutputStream);
                        int i = zzgwd.f8271a;
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = fileInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            } else {
                                fileOutputStream.write(bArr, 0, read);
                            }
                        }
                        zzgwgVar.close();
                        if (!file.delete()) {
                            if (!file2.delete()) {
                                throw new IOException("Unable to delete ".concat(file2.toString()));
                            }
                            throw new IOException("Unable to delete ".concat(file.toString()));
                        }
                        return;
                    } catch (Throwable th) {
                        try {
                            zzgwgVar.f = th;
                            Object obj = zzgqx.f8217a;
                            if (!IOException.class.isInstance(th)) {
                                if (!(th instanceof RuntimeException)) {
                                    if (!(th instanceof Error)) {
                                        throw new RuntimeException(th);
                                    }
                                    throw ((Error) th);
                                }
                                throw ((RuntimeException) th);
                            }
                            throw ((Throwable) IOException.class.cast(th));
                        } catch (Throwable th2) {
                            zzgwgVar.close();
                            throw th2;
                        }
                    }
                }
                throw new IllegalArgumentException(zzgqr.b("Source %s and destination %s must be different", file, file2));
            }
            return;
        }
        throw new IllegalArgumentException(zzgqr.b("Source %s and destination %s must be different", file, file2));
    }
}
