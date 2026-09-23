package com.google.android.gms.internal.mlkit_vision_text_common;

/* loaded from: classes3.dex */
final class zztq extends zztu {

    /* renamed from: a, reason: collision with root package name */
    public final String f11413a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11414c;

    public zztq(String str, int i, boolean z) {
        this.f11413a = str;
        this.b = z;
        this.f11414c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zztu
    public final int a() {
        return this.f11414c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zztu
    public final String b() {
        return this.f11413a;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zztu
    public final boolean c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zztu) {
                zztu zztuVar = (zztu) obj;
                if (this.f11413a.equals(zztuVar.b()) && this.b == zztuVar.c() && this.f11414c == zztuVar.a()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f11413a.hashCode() ^ 1000003;
        if (true != this.b) {
            i = 1237;
        } else {
            i = 1231;
        }
        return (((hashCode * 1000003) ^ i) * 1000003) ^ this.f11414c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MLKitLoggingOptions{libraryName=");
        sb.append(this.f11413a);
        sb.append(", enableFirelog=");
        sb.append(this.b);
        sb.append(", firelogEventType=");
        return android.support.v4.media.a.g(this.f11414c, "}", sb);
    }
}
