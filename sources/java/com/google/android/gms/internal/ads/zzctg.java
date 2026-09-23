package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzctg implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcxr f5450a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzctm f5451c;
    public final zzctl d;
    public final zzcua e;
    public final zzctn f;
    public final zzijp g;
    public final zzijf h;
    public final zzije i;
    public final zzijp j;

    public zzctg(zzcxr zzcxrVar, zzijf zzijfVar, zzctm zzctmVar, zzctl zzctlVar, zzcua zzcuaVar, zzctn zzctnVar, zzdlt zzdltVar, zzijf zzijfVar2, zzije zzijeVar, zzijf zzijfVar3) {
        this.f5450a = zzcxrVar;
        this.b = zzijfVar;
        this.f5451c = zzctmVar;
        this.d = zzctlVar;
        this.e = zzcuaVar;
        this.f = zzctnVar;
        this.g = zzdltVar;
        this.h = zzijfVar2;
        this.i = zzijeVar;
        this.j = zzijfVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzctf zzb() {
        zzcvj zzb = this.f5450a.zzb();
        Context context = (Context) this.b.zzb();
        zzfhs zzfhsVar = this.f5451c.f5458a.f5455c;
        zzijo.a(zzfhsVar);
        View view = this.d.f5457a.b;
        zzijo.a(view);
        zzcir zzcirVar = this.e.f5474a.d;
        zzcvi zzcviVar = this.f.f5459a.f5454a;
        zzdnw zzdnwVar = ((zzdlt) this.g).f5891a.f5888a;
        zzijo.a(zzdnwVar);
        return new zzctf(zzb, context, zzfhsVar, view, zzcirVar, zzcviVar, zzdnwVar, (zzdit) this.h.zzb(), zzijf.b(this.i), (Executor) this.j.zzb());
    }
}
