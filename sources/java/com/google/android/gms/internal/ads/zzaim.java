package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzaim extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4066c;

    public zzaim(String str, String str2, String str3) {
        super(str);
        this.b = str2;
        this.f4066c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaim.class == obj.getClass()) {
            zzaim zzaimVar = (zzaim) obj;
            if (this.f4060a.equals(zzaimVar.f4060a) && Objects.equals(this.b, zzaimVar.b) && Objects.equals(this.f4066c, zzaimVar.f4066c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f4060a.hashCode() + 527;
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return this.f4066c.hashCode() + (((hashCode * 31) + i) * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzaig
    public final String toString() {
        String str = this.f4060a;
        int length = String.valueOf(str).length() + 6;
        String str2 = this.f4066c;
        return android.support.v4.media.a.q(new StringBuilder(str2.length() + length), str, ": url=", str2);
    }
}
