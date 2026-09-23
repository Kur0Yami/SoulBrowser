package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzchu implements zzmn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzchz f5164a;

    public /* synthetic */ zzchu(zzchz zzchzVar) {
        this.f5164a = zzchzVar;
    }

    public final zzmi[] a(Handler handler, zzadg zzadgVar, zzqy zzqyVar) {
        boolean z;
        boolean z2;
        boolean z3;
        zzpp zzppVar;
        zzus zzusVar = zzus.f9302a;
        Context context = this.f5164a.g;
        zzsl zzslVar = new zzsl(context);
        zzgqa.f(!zzslVar.f9249c);
        zzslVar.f9249c = true;
        if (zzslVar.f == null) {
            zzslVar.f = new zzsn(new zzco[0]);
        }
        if (zzslVar.e == null) {
            if (zzslVar.g == null) {
                zzslVar.g = new zzsi(context);
            }
            if (zzslVar.d == null) {
                zzslVar.d = zzsk.f9247a;
            }
            zzsc zzscVar = new zzsc(context);
            if (context != null) {
                zzppVar = null;
            } else {
                zzppVar = zzslVar.b;
            }
            Context context2 = zzscVar.f9238a;
            if (context2 == null) {
                zzscVar.b = zzppVar;
            }
            zzsi zzsiVar = zzslVar.g;
            zzscVar.f9239c = zzsiVar;
            if (zzsiVar == null) {
                zzscVar.f9239c = new zzsi(context2);
            }
            zzslVar.e = new zzse(zzscVar);
        } else {
            if (zzslVar.g == null) {
                z = true;
            } else {
                z = false;
            }
            zzgqa.f(z);
            if (zzslVar.d == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzgqa.f(z2);
        }
        zzsw zzswVar = new zzsw(context, new zzty(context), handler, zzqyVar, new zzss(zzslVar));
        zzabu zzabuVar = new zzabu(context);
        zzabuVar.f3884c = zzur.b;
        zzabuVar.e = handler;
        zzabuVar.f = zzadgVar;
        zzgqa.f(!zzabuVar.b);
        Handler handler2 = zzabuVar.e;
        if ((handler2 == null && zzabuVar.f == null) || (handler2 != null && zzabuVar.f != null)) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzgqa.f(z3);
        zzabuVar.b = true;
        return new zzmi[]{zzswVar, new zzabw(zzabuVar)};
    }
}
