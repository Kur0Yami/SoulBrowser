package com.google.android.gms.internal.mlkit_common;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
final class zzru extends zzsb {

    /* renamed from: a, reason: collision with root package name */
    public final String f10900a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10901c;

    public zzru(String str, int i, boolean z) {
        this.f10900a = str;
        this.b = z;
        this.f10901c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsb
    public final int a() {
        return this.f10901c;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsb
    public final String b() {
        return this.f10900a;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsb
    public final boolean c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzsb) {
                zzsb zzsbVar = (zzsb) obj;
                if (this.f10900a.equals(zzsbVar.b()) && this.b == zzsbVar.c() && this.f10901c == zzsbVar.a()) {
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
        int hashCode = this.f10900a.hashCode() ^ 1000003;
        if (true != this.b) {
            i = 1237;
        } else {
            i = 1231;
        }
        return (((hashCode * 1000003) ^ i) * 1000003) ^ this.f10901c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MLKitLoggingOptions{libraryName=");
        sb.append(this.f10900a);
        sb.append(", enableFirelog=");
        sb.append(this.b);
        sb.append(", firelogEventType=");
        return a.g(this.f10901c, "}", sb);
    }
}
