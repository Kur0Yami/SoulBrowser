package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class zzggg {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7929a;
    public final zzgnc b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgec f7930c;
    public final String d;

    public zzggg(Context context, zzgnc zzgncVar, zzgec zzgecVar, zzgad zzgadVar) {
        this.f7929a = context;
        this.b = zzgncVar;
        this.f7930c = zzgecVar;
        this.d = zzgadVar.J();
    }

    public final String a(long j) {
        String num;
        zzgna a2 = this.b.a(55);
        try {
            try {
                a2.a();
                zzawy D = zzawz.D();
                String str = this.d;
                D.k();
                ((zzawz) D.f).F(str);
                D.k();
                ((zzawz) D.f).E("0.815976881");
                Context context = this.f7929a;
                String packageName = context.getPackageName();
                D.k();
                ((zzawz) D.f).H(packageName);
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                D.k();
                ((zzawz) D.f).G(currentTimeMillis);
                long currentTimeMillis2 = (System.currentTimeMillis() - j) / 1000;
                D.k();
                ((zzawz) D.f).J(currentTimeMillis2);
                try {
                    long j2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                    D.k();
                    ((zzawz) D.f).I(j2);
                } catch (PackageManager.NameNotFoundException unused) {
                    D.k();
                    ((zzawz) D.f).I(-1L);
                }
                zzgec zzgecVar = this.f7930c;
                if (!zzgecVar.b()) {
                    zzgecVar.a();
                }
                zzaxf e = zzgecVar.e(null, ((zzawz) D.m()).h());
                e.k();
                ((zzaxg) e.f).G(5);
                e.k();
                ((zzaxg) e.f).H(2);
                byte[] h = ((zzaxg) e.m()).h();
                zzgvx zzgvxVar = (zzgvx) zzgvy.b;
                num = (zzgvxVar.e == null ? zzgvxVar : zzgvxVar.i(zzgvxVar.d, null)).g(h, h.length);
            } catch (Throwable th) {
                a2.c();
                throw th;
            }
        } catch (UnsupportedEncodingException e2) {
            a2.b(e2);
            num = Integer.toString(7);
        } catch (Throwable th2) {
            a2.b(th2);
            throw th2;
        }
        a2.c();
        return num;
    }
}
