package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class zzarc {

    /* renamed from: a, reason: collision with root package name */
    public final String f4362a;
    public final String b;

    public zzarc(String str, String str2) {
        this.f4362a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzarc.class == obj.getClass()) {
            zzarc zzarcVar = (zzarc) obj;
            if (TextUtils.equals(this.f4362a, zzarcVar.f4362a) && TextUtils.equals(this.b, zzarcVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f4362a.hashCode() * 31);
    }

    public final String toString() {
        String str = this.f4362a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        StringBuilder sb = new StringBuilder(length + 19 + String.valueOf(str2).length() + 1);
        android.support.v4.media.a.z(sb, "Header[name=", str, ",value=", str2);
        sb.append("]");
        return sb.toString();
    }
}
