package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzax implements zzbc {

    /* renamed from: c, reason: collision with root package name */
    public final int f10658c;

    public zzax(int i) {
        this.f10658c = i;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzbc.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof zzbc) {
                zzbc zzbcVar = (zzbc) obj;
                if (this.f10658c == zzbcVar.zza() && zzbb.f10661c.equals(zzbcVar.zzb())) {
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
        return (this.f10658c ^ 14552422) + (zzbb.f10661c.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f10658c + "intEncoding=" + zzbb.f10661c + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzbc
    public final int zza() {
        return this.f10658c;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzbc
    public final zzbb zzb() {
        return zzbb.f10661c;
    }
}
