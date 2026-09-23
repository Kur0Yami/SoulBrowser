package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzun implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzuq f9298c;
    public final /* synthetic */ zzle f;

    public /* synthetic */ zzun(zzuq zzuqVar, zzle zzleVar) {
        this.f9298c = zzuqVar;
        this.f = zzleVar;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        zzuq zzuqVar = this.f9298c;
        zzuqVar.G.set(zzuqVar.C(this.f, zzuqVar.A, 0));
    }
}
