package com.google.android.gms.internal.mlkit_vision_text_common;

/* loaded from: classes3.dex */
final class zzto extends zztt {

    /* renamed from: a, reason: collision with root package name */
    public String f11411a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public int f11412c;
    public byte d;

    public final zztu a() {
        String str;
        if (this.d == 3 && (str = this.f11411a) != null) {
            return new zztq(str, this.f11412c, this.b);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f11411a == null) {
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
