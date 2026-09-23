package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* loaded from: classes.dex */
final class zzgnn extends zzgoo {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f8160a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8161c;
    public final float d;
    public final int e;
    public final String f;

    public zzgnn(IBinder iBinder, String str, int i, float f, int i2, String str2) {
        this.f8160a = iBinder;
        this.b = str;
        this.f8161c = i;
        this.d = f;
        this.e = i2;
        this.f = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo
    public final IBinder a() {
        return this.f8160a;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo
    public final String b() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo
    public final int c() {
        return this.f8161c;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo
    public final float d() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo
    public final int e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzgoo) {
                zzgoo zzgooVar = (zzgoo) obj;
                if (this.f8160a.equals(zzgooVar.a())) {
                    String str = this.b;
                    if (str == null) {
                        if (zzgooVar.b() != null) {
                            return false;
                        }
                    } else if (!str.equals(zzgooVar.b())) {
                        return false;
                    }
                    if (this.f8161c == zzgooVar.c() && Float.floatToIntBits(this.d) == Float.floatToIntBits(zzgooVar.d()) && this.e == zzgooVar.e()) {
                        String str2 = this.f;
                        if (str2 == null) {
                            if (zzgooVar.f() == null) {
                                return true;
                            }
                            return false;
                        }
                        if (str2.equals(zzgooVar.f())) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo
    public final String f() {
        return this.f;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.f8160a.hashCode() ^ 1000003;
        int i = 0;
        String str = this.b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int floatToIntBits = (((((hashCode2 * 1000003) ^ hashCode) * 1000003) ^ this.f8161c) * 1000003) ^ Float.floatToIntBits(this.d);
        String str2 = this.f;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((floatToIntBits * 1525764945) ^ this.e) * (-721379959)) ^ i) * 1000003;
    }

    public final String toString() {
        String obj = this.f8160a.toString();
        int length = obj.length();
        String str = this.b;
        int length2 = String.valueOf(str).length();
        int i = this.f8161c;
        int length3 = String.valueOf(i).length();
        float f = this.d;
        int length4 = String.valueOf(f).length();
        int i2 = this.e;
        int length5 = String.valueOf(i2).length();
        String str2 = this.f;
        StringBuilder sb = new StringBuilder(length + 46 + length2 + 16 + length3 + 23 + length4 + 65 + length5 + 33 + String.valueOf(str2).length() + 30);
        android.support.v4.media.a.z(sb, "OverlayDisplayShowRequest{windowToken=", obj, ", appId=", str);
        sb.append(", layoutGravity=");
        sb.append(i);
        sb.append(", layoutVerticalMargin=");
        sb.append(f);
        sb.append(", displayMode=0, triggerMode=0, sessionToken=null, windowWidthPx=");
        sb.append(i2);
        sb.append(", deeplinkUrl=null, adFieldEnifd=");
        sb.append(str2);
        sb.append(", thirdPartyAuthCallerId=null}");
        return sb.toString();
    }
}
