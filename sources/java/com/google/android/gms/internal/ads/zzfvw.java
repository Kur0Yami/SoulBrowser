package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.Hex;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class zzfvw {
    public static final Object f = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Context f7692a;
    public final SharedPreferences b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7693c;
    public final zzfvd d;
    public final boolean e;

    public zzfvw(Context context, zzbbq zzbbqVar, zzfvd zzfvdVar, boolean z) {
        this.e = false;
        this.f7692a = context;
        this.f7693c = Integer.toString(zzbbqVar.f4536c);
        this.b = context.getSharedPreferences("pcvmspf", 0);
        this.d = zzfvdVar;
        this.e = z;
    }

    public static String d(zzbbs zzbbsVar) {
        zzbbx K = zzbby.K();
        String D = zzbbsVar.D().D();
        K.k();
        ((zzbby) K.f).M(D);
        String E = zzbbsVar.D().E();
        K.k();
        ((zzbby) K.f).N(E);
        long G = zzbbsVar.D().G();
        K.k();
        ((zzbby) K.f).P(G);
        long H = zzbbsVar.D().H();
        K.k();
        ((zzbby) K.f).Q(H);
        long F = zzbbsVar.D().F();
        K.k();
        ((zzbby) K.f).O(F);
        return Hex.bytesToStringLowercase(((zzbby) K.m()).h());
    }

    public final boolean a(zzbbs zzbbsVar, zzfvv zzfvvVar) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            try {
                zzbby f2 = f(1);
                String D = zzbbsVar.D().D();
                if (f2 != null && f2.D().equals(D)) {
                    e(4014, currentTimeMillis);
                    return false;
                }
                long currentTimeMillis2 = System.currentTimeMillis();
                File c2 = c(D);
                if (c2.exists()) {
                    String str = "1";
                    if (true != c2.isDirectory()) {
                        str = "0";
                    }
                    boolean isFile = c2.isFile();
                    String str2 = "1";
                    if (true != isFile) {
                        str2 = "0";
                    }
                    StringBuilder sb = new StringBuilder(7);
                    sb.append("d:");
                    sb.append(str);
                    sb.append(",f:");
                    sb.append(str2);
                    this.d.d(4023, sb.toString(), currentTimeMillis2);
                    e(4015, currentTimeMillis2);
                } else if (!c2.mkdirs()) {
                    String str3 = "1";
                    if (true != c2.canWrite()) {
                        str3 = "0";
                    }
                    this.d.d(4024, "cw:".concat(str3), currentTimeMillis2);
                    e(4015, currentTimeMillis2);
                    return false;
                }
                File c3 = c(D);
                File file = new File(c3, "pcam.jar");
                File file2 = new File(c3, "pcbc");
                if (!zzfvq.b(file, zzbbsVar.E().E())) {
                    e(4016, currentTimeMillis);
                    return false;
                }
                if (!zzfvq.b(file2, zzbbsVar.F().E())) {
                    e(4017, currentTimeMillis);
                    return false;
                }
                if (zzfvvVar != null) {
                    try {
                        z = zzfua.a(file);
                    } catch (GeneralSecurityException unused) {
                        z = false;
                    }
                    if (!z) {
                        e(4018, currentTimeMillis);
                        zzfvq.e(c3);
                        return false;
                    }
                }
                String d = d(zzbbsVar);
                long currentTimeMillis3 = System.currentTimeMillis();
                SharedPreferences sharedPreferences = this.b;
                String string = sharedPreferences.getString("LATMTD".concat(String.valueOf(this.f7693c)), null);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString("LATMTD".concat(String.valueOf(this.f7693c)), d);
                if (string != null) {
                    edit.putString("FBAMTD".concat(String.valueOf(this.f7693c)), string);
                }
                if (!edit.commit()) {
                    e(4019, currentTimeMillis3);
                    return false;
                }
                HashSet hashSet = new HashSet();
                zzbby f3 = f(1);
                if (f3 != null) {
                    hashSet.add(f3.D());
                }
                zzbby f4 = f(2);
                if (f4 != null) {
                    hashSet.add(f4.D());
                }
                for (File file3 : new File(this.f7692a.getDir("pccache", 0), this.f7693c).listFiles()) {
                    if (!hashSet.contains(file3.getName())) {
                        zzfvq.e(file3);
                    }
                }
                e(5014, currentTimeMillis);
                return true;
            } finally {
            }
        }
    }

    public final boolean b(zzbbs zzbbsVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            try {
                if (!zzfvq.b(new File(c(zzbbsVar.D().D()), "pcbc"), zzbbsVar.F().E())) {
                    e(4020, currentTimeMillis);
                    return false;
                }
                String d = d(zzbbsVar);
                SharedPreferences.Editor edit = this.b.edit();
                edit.putString("LATMTD".concat(String.valueOf(this.f7693c)), d);
                boolean commit = edit.commit();
                if (commit) {
                    e(5015, currentTimeMillis);
                } else {
                    e(4021, currentTimeMillis);
                }
                return commit;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final File c(String str) {
        return new File(new File(this.f7692a.getDir("pccache", 0), this.f7693c), str);
    }

    public final void e(int i, long j) {
        this.d.c(i, j);
    }

    public final zzbby f(int i) {
        String string;
        zziab a2;
        String str = this.f7693c;
        SharedPreferences sharedPreferences = this.b;
        if (i == 1) {
            string = sharedPreferences.getString("LATMTD".concat(String.valueOf(str)), null);
        } else {
            string = sharedPreferences.getString("FBAMTD".concat(String.valueOf(str)), null);
        }
        if (string != null) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                byte[] stringToBytes = Hex.stringToBytes(string);
                zzhzl zzhzlVar = zzhzl.f;
                zzhzl B = zzhzl.B(stringToBytes, 0, stringToBytes.length);
                if (this.e) {
                    zziab zziabVar = zziab.b;
                    int i2 = zzhyy.f8889a;
                    a2 = zziab.f8905c;
                } else {
                    a2 = zziab.a();
                }
                return zzbby.J(B, a2);
            } catch (zzibg unused) {
            } catch (NullPointerException unused2) {
                e(2029, currentTimeMillis);
            } catch (RuntimeException unused3) {
                e(2032, currentTimeMillis);
            }
        }
        return null;
    }
}
