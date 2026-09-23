package com.google.android.gms.internal.fido;

/* loaded from: classes3.dex */
public final class zzaq implements zzbp {

    /* renamed from: c, reason: collision with root package name */
    public final Object f10273c;

    public zzaq(Object obj) {
        this.f10273c = obj;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.fido.zzag, java.lang.Exception] */
    public final Object a() {
        if (zzah.b == null) {
            zzah.b = new Exception();
        }
        synchronized (zzah.f10272a) {
        }
        throw new IllegalStateException("Must call PhenotypeContext.setContext() first");
    }
}
