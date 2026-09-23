package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgnr extends zzgot {

    /* renamed from: a, reason: collision with root package name */
    public final String f8167a;
    public final String b;

    public zzgnr(String str, String str2) {
        this.f8167a = str;
        this.b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzgot
    public final String a() {
        return this.f8167a;
    }

    @Override // com.google.android.gms.internal.ads.zzgot
    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzgot) {
                zzgot zzgotVar = (zzgot) obj;
                String str = this.f8167a;
                if (str == null) {
                    if (zzgotVar.a() != null) {
                        return false;
                    }
                } else if (!str.equals(zzgotVar.a())) {
                    return false;
                }
                String str2 = this.b;
                if (str2 == null) {
                    if (zzgotVar.b() == null) {
                        return true;
                    }
                    return false;
                }
                if (str2.equals(zzgotVar.b())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        String str = this.f8167a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        String str2 = this.b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i ^ ((hashCode ^ 1000003) * 1000003);
    }

    public final String toString() {
        String str = this.f8167a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        StringBuilder sb = new StringBuilder(length + 49 + String.valueOf(str2).length() + 1);
        android.support.v4.media.a.z(sb, "OverlayDisplayUpdateRequest{sessionToken=", str, ", appId=", str2);
        sb.append("}");
        return sb.toString();
    }
}
