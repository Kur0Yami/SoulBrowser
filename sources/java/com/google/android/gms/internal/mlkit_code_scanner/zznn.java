package com.google.android.gms.internal.mlkit_code_scanner;

/* loaded from: classes3.dex */
final class zznn extends zzns {

    /* renamed from: a, reason: collision with root package name */
    public String f10616a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public int f10617c;
    public byte d;

    public final zznt a() {
        String str;
        if (this.d == 3 && (str = this.f10616a) != null) {
            return new zznp(str, this.f10617c, this.b);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f10616a == null) {
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
