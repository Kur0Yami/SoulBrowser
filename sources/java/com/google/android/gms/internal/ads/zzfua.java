package com.google.android.gms.internal.ads;

import android.os.Build;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import kotlin.io.encoding.Base64;

/* loaded from: classes.dex */
public final class zzfua {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f7655a = {Base64.padSymbol, 122, 18, 35, 1, -102, -93, -99, -98, -96, -29, 67, 106, -73, -64, -119, 107, -5, 79, -74, 121, -12, -34, 95, -25, -62, 63, 50, 108, -113, -103, 74};
    public static final byte[] b = {-110, -13, -34, 70, -83, 43, 97, 21, -44, 16, -54, -125, -28, -57, -125, -127, -7, 17, 102, -69, 116, -121, -79, 43, -13, 120, 58, 55, -29, -108, 95, 83};

    public static boolean a(File file) {
        try {
            X509Certificate[][] a2 = zzaqq.a(file.getAbsolutePath());
            if (a2.length == 1) {
                byte[] digest = MessageDigest.getInstance("SHA-256").digest(a2[0][0].getEncoded());
                if (Arrays.equals(f7655a, digest) || (!"user".equals(Build.TYPE) && Arrays.equals(b, digest))) {
                    return true;
                }
                return false;
            }
            throw new GeneralSecurityException("APK has more than one signature.");
        } catch (zzaqn e) {
            throw new GeneralSecurityException("Package is not signed", e);
        } catch (IOException | RuntimeException e2) {
            throw new GeneralSecurityException("Failed to verify signatures", e2);
        }
    }
}
