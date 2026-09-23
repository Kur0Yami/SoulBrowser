package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzaia extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4054c;
    public final String d;

    public zzaia(String str, String str2, String str3) {
        super("COMM");
        this.b = str;
        this.f4054c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaia.class == obj.getClass()) {
            zzaia zzaiaVar = (zzaia) obj;
            if (Objects.equals(this.f4054c, zzaiaVar.f4054c) && Objects.equals(this.b, zzaiaVar.b) && Objects.equals(this.d, zzaiaVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f4054c.hashCode() + ((this.b.hashCode() + 527) * 31);
        String str = this.d;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return (hashCode * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final String toString() {
        String str = this.f4060a;
        int length = String.valueOf(str).length();
        String str2 = this.d;
        int length2 = String.valueOf(str2).length();
        String str3 = this.b;
        int length3 = str3.length() + length + 11 + 14;
        String str4 = this.f4054c;
        StringBuilder sb = new StringBuilder(str4.length() + length3 + 7 + length2);
        android.support.v4.media.a.z(sb, str, ": language=", str3, ", description=");
        return android.support.v4.media.a.q(sb, str4, ", text=", str2);
    }
}
