package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfx implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final float f7708a;
    public final float b;

    public zzfx(float f, float f2) {
        boolean z = false;
        if (f >= -90.0f && f <= 90.0f && f2 >= -180.0f && f2 <= 180.0f) {
            z = true;
        }
        zzgqa.b("Invalid latitude or longitude", z);
        this.f7708a = f;
        this.b = f2;
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final /* synthetic */ void a(zzam zzamVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzfx.class == obj.getClass()) {
            zzfx zzfxVar = (zzfx) obj;
            if (this.f7708a == zzfxVar.f7708a && this.b == zzfxVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.b) + ((Float.floatToIntBits(this.f7708a) + 527) * 31);
    }

    public final String toString() {
        float f = this.f7708a;
        int length = String.valueOf(f).length();
        float f2 = this.b;
        StringBuilder sb = new StringBuilder(length + 26 + String.valueOf(f2).length());
        sb.append("xyz: latitude=");
        sb.append(f);
        sb.append(", longitude=");
        sb.append(f2);
        return sb.toString();
    }
}
