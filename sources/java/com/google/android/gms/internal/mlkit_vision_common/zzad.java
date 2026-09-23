package com.google.android.gms.internal.mlkit_vision_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzad implements zzai {

    /* renamed from: c, reason: collision with root package name */
    public final int f10919c;

    public zzad(int i) {
        this.f10919c = i;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzai.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof zzai) {
                zzai zzaiVar = (zzai) obj;
                if (this.f10919c == zzaiVar.zza() && zzah.f10922c.equals(zzaiVar.zzb())) {
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
        return (this.f10919c ^ 14552422) + (zzah.f10922c.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f10919c + "intEncoding=" + zzah.f10922c + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzai
    public final int zza() {
        return this.f10919c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzai
    public final zzah zzb() {
        return zzah.f10922c;
    }
}
