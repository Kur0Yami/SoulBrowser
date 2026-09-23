package com.google.android.gms.internal.ads;

import java.io.EOFException;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzamb implements zzaga {

    /* renamed from: a, reason: collision with root package name */
    public final zzaga f4176a;
    public final zzalw b;
    public zzaly g;
    public zzv h;
    public boolean i;
    public int d = 0;
    public int e = 0;
    public byte[] f = zzfj.b;

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4177c = new zzer();

    public zzamb(zzaga zzagaVar, zzalw zzalwVar) {
        this.f4176a = zzagaVar;
        this.b = zzalwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final int a(zzj zzjVar, int i, boolean z) {
        if (this.g == null) {
            return this.f4176a.a(zzjVar, i, z);
        }
        g(i);
        int b = zzjVar.b(this.f, this.e, i);
        if (b == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        this.e += b;
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void b(int i, zzer zzerVar) {
        c(zzerVar, i, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void c(zzer zzerVar, int i, int i2) {
        if (this.g == null) {
            this.f4176a.c(zzerVar, i, i2);
            return;
        }
        g(i);
        zzerVar.H(this.f, this.e, i);
        this.e += i;
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void d(long j, int i, int i2, int i3, zzafz zzafzVar) {
        boolean z;
        if (this.g == null) {
            this.f4176a.d(j, i, i2, i3, zzafzVar);
            return;
        }
        if (zzafzVar == null) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.b("DRM on subtitles is not supported", z);
        int i4 = (this.e - i3) - i2;
        try {
            this.g.a(this.f, i4, i2, new zzama(this, j, i));
        } catch (RuntimeException e) {
            if (this.i) {
                zzee.d("SubtitleTranscodingTO", "Parsing subtitles failed, ignoring sample.", e);
            } else {
                throw e;
            }
        }
        int i5 = i4 + i2;
        this.d = i5;
        if (i5 == this.e) {
            this.d = 0;
            this.e = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final void e(zzv zzvVar) {
        boolean z;
        zzaly zzalyVar;
        String str = zzvVar.m;
        str.getClass();
        if (zzas.f(str) == 3) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        boolean equals = zzvVar.equals(this.h);
        zzalw zzalwVar = this.b;
        if (!equals) {
            this.h = zzvVar;
            if (zzalwVar.a(zzvVar)) {
                zzalyVar = zzalwVar.c(zzvVar);
            } else {
                zzalyVar = null;
            }
            this.g = zzalyVar;
        }
        zzaly zzalyVar2 = this.g;
        zzaga zzagaVar = this.f4176a;
        if (zzalyVar2 == null) {
            zzagaVar.e(zzvVar);
            return;
        }
        zzt zztVar = new zzt(zzvVar);
        zztVar.e("application/x-media3-cues");
        zztVar.i = str;
        zztVar.q = LongCompanionObject.MAX_VALUE;
        zztVar.J = zzalwVar.b(zzvVar);
        zzagaVar.e(new zzv(zztVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaga
    public final int f(zzj zzjVar, int i, boolean z) {
        return a(zzjVar, i, z);
    }

    public final void g(int i) {
        byte[] bArr;
        int length = this.f.length;
        int i2 = this.e;
        if (length - i2 >= i) {
            return;
        }
        int i3 = i2 - this.d;
        int max = Math.max(i3 + i3, i + i3);
        byte[] bArr2 = this.f;
        if (max <= bArr2.length) {
            bArr = bArr2;
        } else {
            bArr = new byte[max];
        }
        System.arraycopy(bArr2, this.d, bArr, 0, i3);
        this.d = 0;
        this.e = i3;
        this.f = bArr;
    }
}
