package com.google.android.gms.internal.mlkit_common;

/* loaded from: classes3.dex */
final class zzrs extends zzsa {

    /* renamed from: a, reason: collision with root package name */
    public String f10898a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public int f10899c;
    public byte d;

    public final zzsb a() {
        String str;
        if (this.d == 3 && (str = this.f10898a) != null) {
            return new zzru(str, this.f10899c, this.b);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f10898a == null) {
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
