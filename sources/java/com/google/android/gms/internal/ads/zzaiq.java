package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzaiq implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final float f4072a;
    public final int b;

    public zzaiq(float f, int i) {
        this.f4072a = f;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final /* synthetic */ void a(zzam zzamVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaiq.class == obj.getClass()) {
            zzaiq zzaiqVar = (zzaiq) obj;
            if (this.f4072a == zzaiqVar.f4072a && this.b == zzaiqVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(this.f4072a) + 527) * 31) + this.b;
    }

    public final String toString() {
        float f = this.f4072a;
        int length = String.valueOf(f).length();
        int i = this.b;
        StringBuilder sb = new StringBuilder(length + 47 + String.valueOf(i).length());
        sb.append("smta: captureFrameRate=");
        sb.append(f);
        sb.append(", svcTemporalLayerCount=");
        sb.append(i);
        return sb.toString();
    }
}
