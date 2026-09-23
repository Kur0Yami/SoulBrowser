package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfwh extends zzfwn {

    /* renamed from: a, reason: collision with root package name */
    public String f7701a;
    public byte b;

    /* renamed from: c, reason: collision with root package name */
    public int f7702c;
    public int d;

    public final zzfwo a() {
        if (this.b == 1 && this.f7701a != null && this.f7702c != 0 && this.d != 0) {
            return new zzfwi(this.f7701a, this.f7702c, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f7701a == null) {
            sb.append(" fileOwner");
        }
        if (this.b == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if (this.f7702c == 0) {
            sb.append(" fileChecks");
        }
        if (this.d == 0) {
            sb.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
