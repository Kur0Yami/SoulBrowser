package com.google.android.gms.internal.ads;

import java.io.EOFException;

/* loaded from: classes.dex */
final class zzalg {

    /* renamed from: a, reason: collision with root package name */
    public final zzalh f4158a = new zzalh();
    public final zzer b = new zzer(new byte[65025], 0);

    /* renamed from: c, reason: collision with root package name */
    public int f4159c = -1;
    public int d;
    public boolean e;

    public final boolean a(zzaep zzaepVar) {
        int i;
        boolean z = this.e;
        zzer zzerVar = this.b;
        if (z) {
            this.e = false;
            zzerVar.y(0);
        }
        while (true) {
            boolean z2 = true;
            if (this.e) {
                return true;
            }
            int i2 = this.f4159c;
            zzalh zzalhVar = this.f4158a;
            if (i2 < 0) {
                if (!zzalhVar.a(zzaepVar, -1L) || !zzalhVar.b(zzaepVar, true)) {
                    break;
                }
                int i3 = zzalhVar.d;
                if ((zzalhVar.f4160a & 1) == 1 && zzerVar.f6835c == 0) {
                    i3 += b(0);
                    i = this.d;
                } else {
                    i = 0;
                }
                try {
                    zzaepVar.zzf(i3);
                    this.f4159c = i;
                    i2 = i;
                } catch (EOFException unused) {
                }
            }
            int b = b(i2);
            int i4 = this.f4159c + this.d;
            if (b > 0) {
                zzerVar.A(zzerVar.f6835c + b);
                try {
                    zzaepVar.i(zzerVar.f6834a, zzerVar.f6835c, b);
                    zzerVar.C(zzerVar.f6835c + b);
                    if (zzalhVar.f[i4 - 1] == 255) {
                        z2 = false;
                    }
                    this.e = z2;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i4 == zzalhVar.f4161c) {
                i4 = -1;
            }
            this.f4159c = i4;
        }
        return false;
    }

    public final int b(int i) {
        int i2;
        int i3 = 0;
        this.d = 0;
        do {
            int i4 = this.d;
            int i5 = i + i4;
            zzalh zzalhVar = this.f4158a;
            if (i5 >= zzalhVar.f4161c) {
                break;
            }
            this.d = i4 + 1;
            i2 = zzalhVar.f[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }
}
