package com.google.android.gms.internal.mlkit_vision_common;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
final class zzma extends zzme {

    /* renamed from: a, reason: collision with root package name */
    public final String f11101a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11102c;

    public zzma(String str, int i, boolean z) {
        this.f11101a = str;
        this.b = z;
        this.f11102c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzme
    public final int a() {
        return this.f11102c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzme
    public final String b() {
        return this.f11101a;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzme
    public final boolean c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzme) {
                zzme zzmeVar = (zzme) obj;
                if (this.f11101a.equals(zzmeVar.b()) && this.b == zzmeVar.c() && this.f11102c == zzmeVar.a()) {
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
        int hashCode = this.f11101a.hashCode() ^ 1000003;
        if (true != this.b) {
            i = 1237;
        } else {
            i = 1231;
        }
        return (((hashCode * 1000003) ^ i) * 1000003) ^ this.f11102c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MLKitLoggingOptions{libraryName=");
        sb.append(this.f11101a);
        sb.append(", enableFirelog=");
        sb.append(this.b);
        sb.append(", firelogEventType=");
        return a.g(this.f11102c, "}", sb);
    }
}
