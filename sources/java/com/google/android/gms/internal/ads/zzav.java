package com.google.android.gms.internal.ads;

import java.util.Locale;

/* loaded from: classes.dex */
public final class zzav {
    public static final zzav d = new zzav(1.0f, 1.0f);

    /* renamed from: a, reason: collision with root package name */
    public final float f4431a;
    public final float b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4432c;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzav(float f, float f2) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        zzgqa.a(f2 > 0.0f);
        this.f4431a = f;
        this.b = f2;
        this.f4432c = Math.round(f * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzav.class == obj.getClass()) {
            zzav zzavVar = (zzav) obj;
            if (this.f4431a == zzavVar.f4431a && this.b == zzavVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.b) + ((Float.floatToRawIntBits(this.f4431a) + 527) * 31);
    }

    public final String toString() {
        Object[] objArr = {Float.valueOf(this.f4431a), Float.valueOf(this.b)};
        String str = zzfj.f7405a;
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", objArr);
    }
}
