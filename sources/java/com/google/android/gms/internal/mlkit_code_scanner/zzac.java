package com.google.android.gms.internal.mlkit_code_scanner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzac implements zzah {

    /* renamed from: c, reason: collision with root package name */
    public final int f10415c;

    public zzac(int i) {
        this.f10415c = i;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzah.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof zzah) {
                zzah zzahVar = (zzah) obj;
                if (this.f10415c == zzahVar.zza() && zzag.f10418c.equals(zzahVar.zzb())) {
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
        return (this.f10415c ^ 14552422) + (zzag.f10418c.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f10415c + "intEncoding=" + zzag.f10418c + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzah
    public final int zza() {
        return this.f10415c;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzah
    public final zzag zzb() {
        return zzag.f10418c;
    }
}
