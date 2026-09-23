package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgas implements zzgdz {

    /* renamed from: a, reason: collision with root package name */
    public final zzgaj f7785a;
    public final zzgap b;

    /* renamed from: c, reason: collision with root package name */
    public Context f7786c;
    public View d;
    public Activity e;
    public String f;
    public HashMap g;
    public zzavs h;
    public zzgba i;

    public /* synthetic */ zzgas(zzgaj zzgajVar, zzgap zzgapVar) {
        this.f7785a = zzgajVar;
        this.b = zzgapVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdz
    public final /* bridge */ /* synthetic */ zzgdz a(Context context) {
        context.getClass();
        this.f7786c = context;
        return this;
    }

    public final zzgea b() {
        zzijo.b(Context.class, this.f7786c);
        zzijo.b(Map.class, this.g);
        zzijo.b(zzavs.class, this.h);
        zzijo.b(zzgba.class, this.i);
        return new zzgat(this.f7785a, this.b, this.f7786c, this.d, this.e, this.f, this.g, this.h, this.i);
    }

    public final /* bridge */ /* synthetic */ zzgdz c(zzavs zzavsVar) {
        zzavsVar.getClass();
        this.h = zzavsVar;
        return this;
    }
}
