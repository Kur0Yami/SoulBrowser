package com.google.android.gms.internal.ads;

import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
final class zzaqg {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f4343a = {0, 0, 0, 0, 16, 0, ByteCompanionObject.MIN_VALUE, 0, 0, -86, 0, 56, -101, 113};
    public static final byte[] b = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    public static boolean a(zzaep zzaepVar) {
        zzer zzerVar = new zzer(8);
        int i = zzaqf.a(zzaepVar, zzerVar).f4342a;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        zzaepVar.j(zzerVar.f6834a, 0, 4);
        zzerVar.E(0);
        int b2 = zzerVar.b();
        if (b2 != 1463899717) {
            StringBuilder sb = new StringBuilder(String.valueOf(b2).length() + 23);
            sb.append("Unsupported form type: ");
            sb.append(b2);
            zzee.e("WavHeaderReader", sb.toString());
            return false;
        }
        return true;
    }

    public static zzaqf b(int i, zzaep zzaepVar, zzer zzerVar) {
        zzaqf a2 = zzaqf.a(zzaepVar, zzerVar);
        while (true) {
            int i2 = a2.f4342a;
            if (i2 != i) {
                a.i(new StringBuilder(String.valueOf(i2).length() + 28), "Ignoring unknown WAV chunk: ", i2, "WavHeaderReader");
                long j = a2.b;
                long j2 = 8 + j;
                if ((1 & j) != 0) {
                    j2 = 9 + j;
                }
                if (j2 <= 2147483647L) {
                    zzaepVar.zzf((int) j2);
                    a2 = zzaqf.a(zzaepVar, zzerVar);
                } else {
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 40);
                    sb.append("Chunk is too large (~2GB+) to skip; id: ");
                    sb.append(i2);
                    throw zzat.b(sb.toString());
                }
            } else {
                return a2;
            }
        }
    }
}
