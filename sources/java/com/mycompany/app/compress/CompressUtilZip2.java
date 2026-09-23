package com.mycompany.app.compress;

import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import net.lingala.zip4j.core.ZipFile;
import net.lingala.zip4j.exception.ZipException;
import net.lingala.zip4j.io.ZipInputStream;
import net.lingala.zip4j.model.FileHeader;

/* loaded from: classes3.dex */
public class CompressUtilZip2 {

    /* renamed from: a, reason: collision with root package name */
    public ZipFile f12876a;

    public static boolean a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return new ZipFile(str).f();
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    public static boolean c(String str, String str2) {
        ZipFile zipFile;
        ArrayList d;
        if (!TextUtils.isEmpty(str)) {
            ZipInputStream zipInputStream = null;
            try {
                try {
                    try {
                        zipFile = new ZipFile(str);
                        zipFile.i(str2);
                        d = zipFile.d();
                    } catch (IOException e) {
                        String message = e.getMessage();
                        if (!TextUtils.isEmpty(message) && message.contains(" - Wrong Password?")) {
                            if (zipInputStream != null) {
                                zipInputStream.close();
                            }
                        }
                    }
                } catch (ZipException e2) {
                    if (e2.f21990c == 5) {
                        if (zipInputStream != null) {
                            zipInputStream.close();
                        }
                    }
                } catch (Exception unused) {
                }
                if (d != null && !d.isEmpty()) {
                    zipInputStream = zipFile.e(zipFile.c(((FileHeader) d.get(0)).p));
                    zipInputStream.read(new byte[512], 0, 512);
                    if (zipInputStream != null) {
                        try {
                            zipInputStream.close();
                        } catch (Exception unused2) {
                            return true;
                        }
                    }
                    return true;
                }
                return true;
            } catch (Exception unused3) {
            }
        }
        return false;
    }

    public final boolean b(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            this.f12876a = new ZipFile(str);
            if (!TextUtils.isEmpty(str2)) {
                this.f12876a.h(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                this.f12876a.i(str3);
                return true;
            }
            return true;
        } catch (Exception unused) {
            this.f12876a = null;
            return false;
        }
    }
}
