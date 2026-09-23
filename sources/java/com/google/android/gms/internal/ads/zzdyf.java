package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdyf extends zzdyj {

    /* renamed from: a, reason: collision with root package name */
    public long f6257a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public byte f6258c;

    public final zzdyk a() {
        if (this.f6258c != 3) {
            StringBuilder sb = new StringBuilder();
            if ((this.f6258c & 1) == 0) {
                sb.append(" id");
            }
            if ((this.f6258c & 2) == 0) {
                sb.append(" eventType");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new zzdyg(this.f6257a, this.b);
    }
}
