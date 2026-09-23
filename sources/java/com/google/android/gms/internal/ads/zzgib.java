package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import java.io.File;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class zzgib {

    /* renamed from: a, reason: collision with root package name */
    public final File f7979a;
    public final File b;

    /* renamed from: c, reason: collision with root package name */
    public final SharedPreferences f7980c;
    public final zzija d;
    public final zzgnc e;

    public zzgib(Context context, SharedPreferences sharedPreferences, zzija zzijaVar, zzgnc zzgncVar) {
        this.f7980c = sharedPreferences;
        File dir = context.getDir("pccache2", 0);
        zzfvq.d(dir, false);
        this.f7979a = dir;
        File dir2 = context.getDir("tmppccache2", 0);
        zzfvq.d(dir2, true);
        this.b = dir2;
        this.d = zzijaVar;
        this.e = zzgncVar;
    }

    public final void a(zzgcs zzgcsVar, byte[] bArr, byte[] bArr2) {
        String D = zzgcsVar.D().D();
        boolean isEmpty = TextUtils.isEmpty(D);
        zzgnc zzgncVar = this.e;
        if (!isEmpty && bArr2.length != 0) {
            File file = this.b;
            zzfvq.e(file);
            file.mkdirs();
            File c2 = zzfvq.c(file, D);
            c2.getClass();
            c2.mkdirs();
            File a2 = zzfvq.a(file, D, "pcam.jar");
            a2.getClass();
            if (bArr == null || bArr.length <= 0 || zzfvq.b(a2, bArr)) {
                File a3 = zzfvq.a(file, D, "pcbc");
                a3.getClass();
                if (zzfvq.b(a3, bArr2)) {
                    String D2 = zzgcsVar.D().D();
                    if (!TextUtils.isEmpty(D2)) {
                        File a4 = zzfvq.a(file, D2, "pcam.jar");
                        a4.getClass();
                        File a5 = zzfvq.a(file, D2, "pcbc");
                        a5.getClass();
                        File a6 = zzfvq.a(c(), D2, "pcam.jar");
                        a6.getClass();
                        File a7 = zzfvq.a(c(), D2, "pcbc");
                        a7.getClass();
                        if (a4.exists() && !a4.renameTo(a6)) {
                            zzgncVar.b(15318);
                        } else if (a5.exists() && a5.renameTo(a7)) {
                            zzgcs b = b(1);
                            SharedPreferences.Editor edit = this.f7980c.edit();
                            if (b != null && !zzgcsVar.D().D().equals(b.D().D())) {
                                edit.putString(d(), Hex.bytesToStringLowercase(b.h()));
                            }
                            edit.putString(e(), Hex.bytesToStringLowercase(zzgcsVar.h()));
                            if (!edit.commit()) {
                                zzgncVar.b(15320);
                            }
                        } else {
                            zzgncVar.b(15319);
                        }
                    }
                    HashSet hashSet = new HashSet();
                    zzgcs b2 = b(1);
                    if (b2 != null) {
                        hashSet.add(b2.D().D());
                    }
                    zzgcs b3 = b(2);
                    if (b3 != null) {
                        hashSet.add(b3.D().D());
                    }
                    File[] listFiles = c().listFiles();
                    if (listFiles != null) {
                        for (File file2 : listFiles) {
                            String name = file2.getName();
                            if (!hashSet.contains(name)) {
                                File c3 = zzfvq.c(c(), name);
                                c3.getClass();
                                zzfvq.e(c3);
                            }
                        }
                        return;
                    }
                    return;
                }
            }
        }
        zzgncVar.b(15316);
    }

    public final zzgcs b(int i) {
        String string;
        SharedPreferences sharedPreferences = this.f7980c;
        if (i == 1) {
            string = sharedPreferences.getString(e(), null);
        } else {
            string = sharedPreferences.getString(d(), null);
        }
        if (!TextUtils.isEmpty(string)) {
            try {
                byte[] stringToBytes = Hex.stringToBytes(string);
                zzhzl zzhzlVar = zzhzl.f;
                zzgcs G = zzgcs.G(zzhzl.B(stringToBytes, 0, stringToBytes.length));
                String D = G.D().D();
                File a2 = zzfvq.a(c(), D, "pcam.jar");
                if (a2 != null) {
                    if (!a2.exists() && (a2 = zzfvq.a(c(), D, "pcam")) == null) {
                        throw null;
                    }
                    File a3 = zzfvq.a(c(), D, "pcbc");
                    if (a3 != null) {
                        if (a2.exists() && a3.exists()) {
                            return G;
                        }
                    } else {
                        throw null;
                    }
                } else {
                    throw null;
                }
            } catch (zzibg unused) {
                this.e.b(15317);
                return null;
            }
        }
        return null;
    }

    public final File c() {
        File file = new File(this.f7979a, Integer.toString(((zzbbq) this.d.zzb()).f4536c));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    public final String d() {
        int i = ((zzbbq) this.d.zzb()).f4536c;
        return androidx.work.impl.workers.a.r(i, "FBAMTD", new StringBuilder(String.valueOf(i).length() + 6));
    }

    public final String e() {
        int i = ((zzbbq) this.d.zzb()).f4536c;
        return androidx.work.impl.workers.a.r(i, "LATMTD", new StringBuilder(String.valueOf(i).length() + 6));
    }
}
