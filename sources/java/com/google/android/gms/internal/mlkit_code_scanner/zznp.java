package com.google.android.gms.internal.mlkit_code_scanner;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
final class zznp extends zznt {

    /* renamed from: a, reason: collision with root package name */
    public final String f10618a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10619c;

    public zznp(String str, int i, boolean z) {
        this.f10618a = str;
        this.b = z;
        this.f10619c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zznt
    public final int a() {
        return this.f10619c;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zznt
    public final String b() {
        return this.f10618a;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zznt
    public final boolean c() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zznt) {
                zznt zzntVar = (zznt) obj;
                if (this.f10618a.equals(zzntVar.b()) && this.b == zzntVar.c() && this.f10619c == zzntVar.a()) {
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
        int hashCode = this.f10618a.hashCode() ^ 1000003;
        if (true != this.b) {
            i = 1237;
        } else {
            i = 1231;
        }
        return (((hashCode * 1000003) ^ i) * 1000003) ^ this.f10619c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MLKitLoggingOptions{libraryName=");
        sb.append(this.f10618a);
        sb.append(", enableFirelog=");
        sb.append(this.b);
        sb.append(", firelogEventType=");
        return a.g(this.f10619c, "}", sb);
    }
}
