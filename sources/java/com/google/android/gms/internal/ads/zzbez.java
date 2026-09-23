package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzbez extends zzcdt {
    public final /* synthetic */ zzbff f;

    public zzbez(zzbff zzbffVar) {
        this.f = zzbffVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdt, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        this.f.a();
        return this.f5072c.cancel(z);
    }
}
