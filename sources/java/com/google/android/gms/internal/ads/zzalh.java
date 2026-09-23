package com.google.android.gms.internal.ads;

import java.io.EOFException;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
final class zzalh {

    /* renamed from: a, reason: collision with root package name */
    public int f4160a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public int f4161c;
    public int d;
    public int e;
    public final int[] f = new int[KotlinVersion.MAX_COMPONENT_VALUE];
    public final zzer g = new zzer(KotlinVersion.MAX_COMPONENT_VALUE);

    public final boolean a(zzaep zzaepVar, long j) {
        boolean z;
        boolean z2;
        if (zzaepVar.zzn() == zzaepVar.zzm()) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        zzer zzerVar = this.g;
        zzerVar.y(4);
        while (true) {
            if (j != -1 && zzaepVar.zzn() + 4 >= j) {
                break;
            }
            try {
                z2 = zzaepVar.m(zzerVar.f6834a, 0, 4, true);
            } catch (EOFException unused) {
                z2 = false;
            }
            if (!z2) {
                break;
            }
            zzerVar.E(0);
            if (zzerVar.P() == 1332176723) {
                zzaepVar.zzl();
                return true;
            }
            zzaepVar.zzf(1);
        }
        do {
            if (j != -1 && zzaepVar.zzn() >= j) {
                break;
            }
        } while (zzaepVar.zzd() != -1);
        return false;
    }

    public final boolean b(zzaep zzaepVar, boolean z) {
        boolean z2;
        boolean z3;
        this.f4160a = 0;
        this.b = 0L;
        this.f4161c = 0;
        this.d = 0;
        this.e = 0;
        zzer zzerVar = this.g;
        zzerVar.y(27);
        try {
            z2 = zzaepVar.m(zzerVar.f6834a, 0, 27, z);
        } catch (EOFException e) {
            if (z) {
                z2 = false;
            } else {
                throw e;
            }
        }
        if (z2 && zzerVar.P() == 1332176723) {
            if (zzerVar.K() != 0) {
                if (!z) {
                    throw zzat.b("unsupported bit stream revision");
                }
            } else {
                this.f4160a = zzerVar.K();
                this.b = zzerVar.e();
                zzerVar.a();
                zzerVar.a();
                zzerVar.a();
                int K = zzerVar.K();
                this.f4161c = K;
                this.d = K + 27;
                zzerVar.y(K);
                try {
                    z3 = zzaepVar.m(zzerVar.f6834a, 0, this.f4161c, z);
                } catch (EOFException e2) {
                    if (z) {
                        z3 = false;
                    } else {
                        throw e2;
                    }
                }
                if (z3) {
                    for (int i = 0; i < this.f4161c; i++) {
                        int K2 = zzerVar.K();
                        this.f[i] = K2;
                        this.e += K2;
                    }
                    return true;
                }
            }
        }
        return false;
    }
}
