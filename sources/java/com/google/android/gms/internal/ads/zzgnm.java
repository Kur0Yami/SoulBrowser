package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* loaded from: classes.dex */
final class zzgnm extends zzgon {

    /* renamed from: a, reason: collision with root package name */
    public IBinder f8158a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public int f8159c;
    public float d;
    public int e;
    public String f;
    public byte g;

    public final zzgoo a() {
        IBinder iBinder;
        if (this.g == 31 && (iBinder = this.f8158a) != null) {
            return new zzgnn(iBinder, this.b, this.f8159c, this.d, this.e, this.f);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f8158a == null) {
            sb.append(" windowToken");
        }
        if ((this.g & 1) == 0) {
            sb.append(" layoutGravity");
        }
        if ((this.g & 2) == 0) {
            sb.append(" layoutVerticalMargin");
        }
        if ((this.g & 4) == 0) {
            sb.append(" displayMode");
        }
        if ((this.g & 8) == 0) {
            sb.append(" triggerMode");
        }
        if ((this.g & 16) == 0) {
            sb.append(" windowWidthPx");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
