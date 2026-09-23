package com.google.android.gms.internal.mlkit_vision_text_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzcs implements zzcx {

    /* renamed from: c, reason: collision with root package name */
    public final int f11144c;

    public zzcs(int i) {
        this.f11144c = i;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzcx.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof zzcx) {
                zzcx zzcxVar = (zzcx) obj;
                if (this.f11144c == zzcxVar.zza() && zzcw.f11147c.equals(zzcxVar.zzb())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.f11144c ^ 14552422) + (zzcw.f11147c.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f11144c + "intEncoding=" + zzcw.f11147c + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzcx
    public final int zza() {
        return this.f11144c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzcx
    public final zzcw zzb() {
        return zzcw.f11147c;
    }
}
