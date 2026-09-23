package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgat implements zzgea {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f7787a;

    public zzgat(zzgaj zzgajVar, zzgap zzgapVar, Context context, View view, Activity activity, String str, HashMap hashMap, zzavs zzavsVar, zzgba zzgbaVar) {
        zzijh a2 = zzijh.a(zzgbaVar);
        zzijh b = zzijh.b(str);
        zzijh a3 = zzijh.a(zzavsVar);
        zzijf zzijfVar = zzgapVar.f7782c;
        zzijh zzijhVar = zzgajVar.b;
        zzijf zzijfVar2 = zzgajVar.l;
        zzgfl zzgflVar = new zzgfl(zzijfVar, zzijfVar2, a3, zzijhVar);
        zzgfj zzgfjVar = new zzgfj(zzijfVar, zzijfVar2, a3);
        zzijh a4 = zzijh.a(hashMap);
        zzijf zzijfVar3 = zzgapVar.f7782c;
        zzijf zzijfVar4 = zzgajVar.l;
        zzgfr zzgfrVar = new zzgfr(zzijfVar3, zzijfVar4, a3, a4);
        zzgfn zzgfnVar = new zzgfn(zzijfVar3, zzijfVar4, a3, zzgajVar.e);
        zzggb zzggbVar = new zzggb(zzijfVar3, zzijfVar4, a3, a2, a4);
        zzgfp zzgfpVar = new zzgfp(zzijfVar3, zzijfVar4, a3);
        zzijh a5 = zzijh.a(context);
        zzijf zzijfVar5 = zzgapVar.f7782c;
        zzijf zzijfVar6 = zzgajVar.l;
        zzgfx zzgfxVar = new zzgfx(a3, zzijfVar5, a2, a5, a4, zzijfVar6);
        zzijh zzijhVar2 = zzgajVar.b;
        zzijh zzijhVar3 = zzgajVar.e;
        zzgfh zzgfhVar = new zzgfh(a3, zzijfVar5, a4, zzijhVar2, a2, zzijhVar3, zzijfVar6);
        zzgft zzgftVar = new zzgft(zzijfVar5, zzijfVar6, a3, zzijhVar2);
        zzgfv zzgfvVar = new zzgfv(zzijfVar5, zzijfVar6, a3, a4, zzijhVar2);
        zzgff zzgffVar = new zzgff(a3, a4, zzijhVar3, zzijfVar6);
        int i = zzijs.f9008c;
        zzijr zzijrVar = new zzijr(11, 0);
        zzijrVar.a(zzgflVar);
        zzijrVar.a(zzgfjVar);
        zzijrVar.a(zzgfrVar);
        zzijrVar.a(zzgfnVar);
        zzijrVar.a(zzggbVar);
        zzijrVar.a(zzgfpVar);
        zzijrVar.a(zzgfxVar);
        zzijrVar.a(zzgfhVar);
        zzijrVar.a(zzgftVar);
        zzijrVar.a(zzgfvVar);
        zzijrVar.a(zzgffVar);
        zzijs c2 = zzijrVar.c();
        zzijh b2 = zzijh.b(view);
        zzijh b3 = zzijh.b(activity);
        zzijf zzijfVar7 = zzgapVar.f7782c;
        zzijf zzijfVar8 = zzgajVar.l;
        zzgfd zzgfdVar = new zzgfd(zzijfVar7, zzijfVar8, a3, b2, b3);
        zzijf a6 = zzijf.a(new zzgeb(a5));
        zzggf zzggfVar = new zzggf(zzijfVar7, a6, zzijfVar8, a3, b2);
        zzijr zzijrVar2 = new zzijr(11, 0);
        zzijrVar2.a(zzgflVar);
        zzijrVar2.a(zzgfjVar);
        zzijrVar2.a(zzgfnVar);
        zzijrVar2.a(zzgfdVar);
        zzijrVar2.a(zzggfVar);
        zzijrVar2.a(zzggbVar);
        zzijrVar2.a(zzgfpVar);
        zzijrVar2.a(zzgfxVar);
        zzijrVar2.a(zzgfhVar);
        zzijrVar2.a(zzgftVar);
        zzijrVar2.a(zzgfvVar);
        zzijs c3 = zzijrVar2.c();
        zzggd zzggdVar = new zzggd(zzgapVar.f7782c, a6, zzgajVar.l, a3, a4);
        zzijr zzijrVar3 = new zzijr(12, 0);
        zzijrVar3.a(zzgflVar);
        zzijrVar3.a(zzgfjVar);
        zzijrVar3.a(zzgfnVar);
        zzijrVar3.a(zzgfdVar);
        zzijrVar3.a(zzggfVar);
        zzijrVar3.a(zzggbVar);
        zzijrVar3.a(zzgfpVar);
        zzijrVar3.a(zzgfxVar);
        zzijrVar3.a(zzgfhVar);
        zzijrVar3.a(zzgftVar);
        zzijrVar3.a(zzgfvVar);
        zzijrVar3.a(zzggdVar);
        this.f7787a = zzijf.a(new zzgdy(zzgajVar.m, zzgajVar.o, zzgapVar.f7782c, a2, b, a3, c2, c3, zzijrVar3.c(), zzgajVar.l));
    }

    public final zzgdx a() {
        return (zzgdx) this.f7787a.zzb();
    }
}
