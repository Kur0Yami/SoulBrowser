package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzqd {

    /* renamed from: a, reason: collision with root package name */
    public boolean f9185a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9186c;
    public int d = 0;

    public final zzqe a() {
        if (!this.f9185a && (this.b || this.f9186c)) {
            throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupportedForOffload is false");
        }
        return new zzqe(this);
    }
}
