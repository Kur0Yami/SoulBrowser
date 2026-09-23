package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import java.io.File;

/* loaded from: classes.dex */
public final class zzfvp {

    /* renamed from: a, reason: collision with root package name */
    public final File f7688a;
    public final File b;

    /* renamed from: c, reason: collision with root package name */
    public final SharedPreferences f7689c;
    public final zzbbq d;

    public zzfvp(Context context, zzbbq zzbbqVar) {
        this.f7689c = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzfvq.d(dir, false);
        this.f7688a = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzfvq.d(dir2, true);
        this.b = dir2;
        this.d = zzbbqVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006c, code lost:
    
        if (r10 == false) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x017f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.gms.internal.ads.zzbbs r9, com.google.android.gms.internal.ads.zzfvv r10) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfvp.a(com.google.android.gms.internal.ads.zzbbs, com.google.android.gms.internal.ads.zzfvv):boolean");
    }

    public final zzbby b(int i) {
        String string;
        SharedPreferences sharedPreferences = this.f7689c;
        if (i == 1) {
            string = sharedPreferences.getString(e(), null);
        } else {
            string = sharedPreferences.getString(d(), null);
        }
        if (!TextUtils.isEmpty(string)) {
            try {
                byte[] stringToBytes = Hex.stringToBytes(string);
                zzhzl zzhzlVar = zzhzl.f;
                zzbby I = zzbby.I(zzhzl.B(stringToBytes, 0, stringToBytes.length));
                String D = I.D();
                File a2 = zzfvq.a(c(), D, "pcam.jar");
                if (!a2.exists()) {
                    a2 = zzfvq.a(c(), D, "pcam");
                }
                File a3 = zzfvq.a(c(), D, "pcbc");
                if (a2.exists()) {
                    if (a3.exists()) {
                        return I;
                    }
                }
            } catch (zzibg unused) {
            }
        }
        return null;
    }

    public final File c() {
        File file = new File(this.f7688a, Integer.toString(this.d.f4536c));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    public final String d() {
        int i = this.d.f4536c;
        return androidx.work.impl.workers.a.r(i, "FBAMTD", new StringBuilder(String.valueOf(i).length() + 6));
    }

    public final String e() {
        int i = this.d.f4536c;
        return androidx.work.impl.workers.a.r(i, "LATMTD", new StringBuilder(String.valueOf(i).length() + 6));
    }
}
