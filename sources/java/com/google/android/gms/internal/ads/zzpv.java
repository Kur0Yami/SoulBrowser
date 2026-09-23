package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzpv {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9175a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9176c;

    public final zzpw a() {
        if (!this.f9175a && (this.b || this.f9176c)) {
            throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
        }
        return new zzpw(this);
    }
}
