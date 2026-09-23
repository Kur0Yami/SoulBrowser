package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzaii extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4062c;
    public final String d;

    public zzaii(String str, String str2, String str3) {
        super("----");
        this.b = str;
        this.f4062c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaii.class == obj.getClass()) {
            zzaii zzaiiVar = (zzaii) obj;
            if (Objects.equals(this.f4062c, zzaiiVar.f4062c) && Objects.equals(this.b, zzaiiVar.b) && Objects.equals(this.d, zzaiiVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f4062c.hashCode() + ((this.b.hashCode() + 527) * 31)) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final String toString() {
        String str = this.f4060a;
        int length = String.valueOf(str).length() + 9;
        String str2 = this.b;
        int length2 = str2.length() + length + 14;
        String str3 = this.f4062c;
        StringBuilder sb = new StringBuilder(str3.length() + length2);
        android.support.v4.media.a.z(sb, str, ": domain=", str2, ", description=");
        sb.append(str3);
        return sb.toString();
    }
}
