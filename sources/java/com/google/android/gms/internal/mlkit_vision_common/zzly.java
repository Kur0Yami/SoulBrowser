package com.google.android.gms.internal.mlkit_vision_common;

/* loaded from: classes3.dex */
final class zzly extends zzmd {

    /* renamed from: a, reason: collision with root package name */
    public String f11099a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public int f11100c;
    public byte d;

    public final zzme a() {
        String str;
        if (this.d == 3 && (str = this.f11099a) != null) {
            return new zzma(str, this.f11100c, this.b);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f11099a == null) {
            sb.append(" libraryName");
        }
        if ((this.d & 1) == 0) {
            sb.append(" enableFirelog");
        }
        if ((this.d & 2) == 0) {
            sb.append(" firelogEventType");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
