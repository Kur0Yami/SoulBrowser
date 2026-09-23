package com.google.android.gms.internal.ads;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzehl extends zzeih {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f6509a;
    public final com.google.android.gms.ads.internal.overlay.zzm b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6510c;
    public final String d;

    public zzehl(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, String str, String str2) {
        this.f6509a = activity;
        this.b = zzmVar;
        this.f6510c = str;
        this.d = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzeih
    public final Activity a() {
        return this.f6509a;
    }

    @Override // com.google.android.gms.internal.ads.zzeih
    public final com.google.android.gms.ads.internal.overlay.zzm b() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzeih
    public final String c() {
        return this.f6510c;
    }

    @Override // com.google.android.gms.internal.ads.zzeih
    public final String d() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzeih) {
                zzeih zzeihVar = (zzeih) obj;
                if (this.f6509a.equals(zzeihVar.a())) {
                    com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.b;
                    if (zzmVar == null) {
                        if (zzeihVar.b() != null) {
                            return false;
                        }
                    } else if (!zzmVar.equals(zzeihVar.b())) {
                        return false;
                    }
                    String str = this.f6510c;
                    if (str == null) {
                        if (zzeihVar.c() != null) {
                            return false;
                        }
                    } else if (!str.equals(zzeihVar.c())) {
                        return false;
                    }
                    String str2 = this.d;
                    if (str2 == null) {
                        if (zzeihVar.d() == null) {
                            return true;
                        }
                        return false;
                    }
                    if (str2.equals(zzeihVar.d())) {
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
        int hashCode2;
        int hashCode3 = this.f6509a.hashCode() ^ 1000003;
        int i = 0;
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.b;
        if (zzmVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzmVar.hashCode();
        }
        int i2 = ((hashCode3 * 1000003) ^ hashCode) * 1000003;
        String str = this.f6510c;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        String str2 = this.d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i3 ^ i;
    }

    public final String toString() {
        String obj = this.f6509a.toString();
        int length = obj.length();
        String valueOf = String.valueOf(this.b);
        int length2 = valueOf.length();
        String str = this.f6510c;
        int length3 = String.valueOf(str).length();
        String str2 = this.d;
        StringBuilder sb = new StringBuilder(length + 40 + length2 + 13 + length3 + 6 + String.valueOf(str2).length() + 1);
        android.support.v4.media.a.z(sb, "OfflineUtilsParams{activity=", obj, ", adOverlay=", valueOf);
        android.support.v4.media.a.z(sb, ", gwsQueryId=", str, ", uri=", str2);
        sb.append("}");
        return sb.toString();
    }
}
