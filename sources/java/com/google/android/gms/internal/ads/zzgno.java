package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgno extends zzgop {

    /* renamed from: a, reason: collision with root package name */
    public int f8162a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public int f8163c;
    public byte d;

    public final zzgoq a() {
        if (this.d != 3) {
            StringBuilder sb = new StringBuilder();
            if ((this.d & 1) == 0) {
                sb.append(" statusCode");
            }
            if ((this.d & 2) == 0) {
                sb.append(" uiMode");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new zzgnp(this.f8162a, this.b, this.f8163c);
    }
}
