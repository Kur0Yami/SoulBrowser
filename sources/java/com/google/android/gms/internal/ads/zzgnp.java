package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgnp extends zzgoq {

    /* renamed from: a, reason: collision with root package name */
    public final int f8164a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8165c;

    public zzgnp(int i, String str, int i2) {
        this.f8164a = i;
        this.b = str;
        this.f8165c = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgoq
    public final int a() {
        return this.f8164a;
    }

    @Override // com.google.android.gms.internal.ads.zzgoq
    public final String b() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzgoq
    public final int c() {
        return this.f8165c;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzgoq) {
                zzgoq zzgoqVar = (zzgoq) obj;
                if (this.f8164a == zzgoqVar.a()) {
                    String str = this.b;
                    if (str == null) {
                        if (zzgoqVar.b() != null) {
                            return false;
                        }
                    } else if (!str.equals(zzgoqVar.b())) {
                        return false;
                    }
                    if (this.f8165c == zzgoqVar.c()) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return ((hashCode ^ ((this.f8164a ^ 1000003) * 1000003)) * 1000003) ^ this.f8165c;
    }

    public final String toString() {
        int i = this.f8164a;
        int length = String.valueOf(i).length();
        String str = this.b;
        int length2 = String.valueOf(str).length();
        int i2 = this.f8165c;
        StringBuilder sb = new StringBuilder(length + 46 + length2 + 9 + String.valueOf(i2).length() + 1);
        sb.append("OverlayDisplayState{statusCode=");
        sb.append(i);
        sb.append(", sessionToken=");
        sb.append(str);
        return androidx.work.impl.workers.a.t(sb, ", uiMode=", i2, "}");
    }
}
