package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzari implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f4366c;
    public final /* synthetic */ long f;
    public final /* synthetic */ zzark g;

    public zzari(zzark zzarkVar, String str, long j) {
        this.f4366c = str;
        this.f = j;
        this.g = zzarkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzark zzarkVar = this.g;
        zzarkVar.f4367c.a(this.f, this.f4366c);
        zzarkVar.f4367c.b(zzarkVar.toString());
    }
}
