package com.google.android.gms.internal.ads;

import java.io.Closeable;

/* loaded from: classes.dex */
public final class zzast extends zziir implements Closeable {
    static {
        zziiy.b(zzast.class);
    }

    public zzast(zziis zziisVar, zzass zzassVar) {
        zzcgf zzcgfVar = (zzcgf) zziisVar;
        long zzb = zzcgfVar.zzb();
        this.f = zziisVar;
        this.h = zzcgfVar.zzc();
        zzcgfVar.h(zzcgfVar.zzc() + zzb);
        this.i = zzcgfVar.zzc();
        this.f8993c = zzassVar;
    }

    @Override // com.google.android.gms.internal.ads.zziir, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zziir
    public final String toString() {
        String obj = this.f.toString();
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.e(7, obj));
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
