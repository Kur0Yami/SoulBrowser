package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final /* synthetic */ class zzduw implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzduz f6168c;

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        final zzduz zzduzVar = this.f6168c;
        zzduzVar.f6172c.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdux
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzduz.this.a();
            }
        });
    }
}
