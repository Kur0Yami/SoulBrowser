package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzaye {
    public static final String a(long j, Context context, String str) {
        try {
            zzawy D = zzawz.D();
            D.k();
            ((zzawz) D.f).F(str);
            D.k();
            ((zzawz) D.f).E("0.460000000");
            String packageName = context.getPackageName();
            D.k();
            ((zzawz) D.f).H(packageName);
            long currentTimeMillis = (System.currentTimeMillis() - j) / 1000;
            D.k();
            ((zzawz) D.f).J(currentTimeMillis);
            long currentTimeMillis2 = System.currentTimeMillis() / 1000;
            D.k();
            ((zzawz) D.f).G(currentTimeMillis2);
            try {
                long j2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                D.k();
                ((zzawz) D.f).I(j2);
            } catch (PackageManager.NameNotFoundException unused) {
                D.k();
                ((zzawz) D.f).I(-1L);
            }
            zzaxf b = zzaxp.b(null, ((zzawz) D.m()).h());
            b.k();
            ((zzaxg) b.f).G(5);
            b.k();
            ((zzaxg) b.f).H(2);
            return Base64.encodeToString(((zzaxg) b.m()).h(), 11);
        } catch (UnsupportedEncodingException | GeneralSecurityException unused2) {
            return Integer.toString(7);
        }
    }
}
