package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfuj extends zzfug {

    /* renamed from: a, reason: collision with root package name */
    public String f7662a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7663c;
    public long d;
    public long e;
    public byte f;

    public final zzfuh a() {
        String str;
        if (this.f == 63 && (str = this.f7662a) != null) {
            return new zzfuk(str, this.b, this.f7663c, this.d, this.e);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f7662a == null) {
            sb.append(" clientVersion");
        }
        if ((this.f & 1) == 0) {
            sb.append(" shouldGetAdvertisingId");
        }
        if ((this.f & 2) == 0) {
            sb.append(" isGooglePlayServicesAvailable");
        }
        if ((this.f & 4) == 0) {
            sb.append(" enableQuerySignalsTimeout");
        }
        if ((this.f & 8) == 0) {
            sb.append(" querySignalsTimeoutMs");
        }
        if ((this.f & 16) == 0) {
            sb.append(" enableQuerySignalsCache");
        }
        if ((this.f & 32) == 0) {
            sb.append(" querySignalsCacheTtlSeconds");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
