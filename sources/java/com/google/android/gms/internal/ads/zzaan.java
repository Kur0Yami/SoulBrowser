package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaan implements zzaah {

    /* renamed from: a, reason: collision with root package name */
    public int f3851a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f3852c = 0;
    public zzaaf[] d = new zzaaf[100];

    @Override // com.google.android.gms.internal.ads.zzaah
    public final synchronized void a(zzaag zzaagVar) {
        while (zzaagVar != null) {
            try {
                zzaaf[] zzaafVarArr = this.d;
                int i = this.f3852c;
                this.f3852c = i + 1;
                zzaafVarArr[i] = zzaagVar.zzd();
                this.b--;
                zzaagVar = zzaagVar.zze();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }

    @Override // com.google.android.gms.internal.ads.zzaah
    public final synchronized void b(zzaaf zzaafVar) {
        zzaaf[] zzaafVarArr = this.d;
        int i = this.f3852c;
        this.f3852c = i + 1;
        zzaafVarArr[i] = zzaafVar;
        this.b--;
        notifyAll();
    }

    public final synchronized void c(int i) {
        int i2 = this.f3851a;
        this.f3851a = i;
        if (i < i2) {
            zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaah
    public final synchronized zzaaf zza() {
        zzaaf zzaafVar;
        try {
            int i = this.b + 1;
            this.b = i;
            int i2 = this.f3852c;
            if (i2 > 0) {
                zzaaf[] zzaafVarArr = this.d;
                int i3 = i2 - 1;
                this.f3852c = i3;
                zzaafVar = zzaafVarArr[i3];
                if (zzaafVar != null) {
                    zzaafVarArr[i3] = null;
                } else {
                    throw null;
                }
            } else {
                zzaafVar = new zzaaf(new byte[65536]);
                zzaaf[] zzaafVarArr2 = this.d;
                int length = zzaafVarArr2.length;
                if (i > length) {
                    this.d = (zzaaf[]) Arrays.copyOf(zzaafVarArr2, length + length);
                    return zzaafVar;
                }
            }
            return zzaafVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaah
    public final synchronized void zzd() {
        int i = this.f3851a;
        String str = zzfj.f7405a;
        int max = Math.max(0, ((i + 65535) / 65536) - this.b);
        int i2 = this.f3852c;
        if (max >= i2) {
            return;
        }
        Arrays.fill(this.d, max, i2, (Object) null);
        this.f3852c = max;
    }
}
