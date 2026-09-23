package com.google.android.gms.internal.ads;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public final class zzafw extends zzafc {
    public final long b;

    public zzafw(zzaep zzaepVar, long j) {
        super(zzaepVar);
        boolean z;
        if (zzaepVar.zzn() >= j) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        this.b = j;
    }

    @Override // com.google.android.gms.internal.ads.zzafc, com.google.android.gms.internal.ads.zzaep
    public final long zzm() {
        return super.zzm() - this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzafc, com.google.android.gms.internal.ads.zzaep
    public final long zzn() {
        return super.zzn() - this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzafc, com.google.android.gms.internal.ads.zzaep
    public final long zzo() {
        return super.zzo() - this.b;
    }
}
