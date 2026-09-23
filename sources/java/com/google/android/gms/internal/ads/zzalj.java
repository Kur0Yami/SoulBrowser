package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import kotlin.UByte;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzalj extends zzalm {
    public static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    public static final byte[] p = {79, 112, 117, 115, 84, 97, 103, 115};
    public boolean n;

    public static boolean e(zzer zzerVar, byte[] bArr) {
        if (zzerVar.B() < 8) {
            return false;
        }
        int i = zzerVar.b;
        byte[] bArr2 = new byte[8];
        zzerVar.H(bArr2, 0, 8);
        zzerVar.E(i);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final long b(zzer zzerVar) {
        byte[] bArr = zzerVar.f6834a;
        byte b = 0;
        byte b2 = bArr[0];
        if (bArr.length > 1) {
            b = bArr[1];
        }
        return (this.i * zzafn.b(b2, b)) / 1000000;
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final boolean c(zzer zzerVar, long j, zzalk zzalkVar) {
        if (e(zzerVar, o)) {
            byte[] copyOf = Arrays.copyOf(zzerVar.f6834a, zzerVar.f6835c);
            int i = copyOf[9] & UByte.MAX_VALUE;
            ArrayList a2 = zzafn.a(copyOf);
            if (zzalkVar.f4162a == null) {
                zzt zztVar = new zzt();
                zztVar.d("audio/ogg");
                zztVar.e("audio/opus");
                zztVar.D = i;
                zztVar.E = 48000;
                zztVar.o = a2;
                zzalkVar.f4162a = new zzv(zztVar);
                return true;
            }
        } else if (e(zzerVar, p)) {
            zzalkVar.f4162a.getClass();
            if (!this.n) {
                this.n = true;
                zzerVar.G(8);
                zzap b = zzagg.b(zzgtd.w(zzagg.a(zzerVar, false, false).f4000a));
                if (b != null) {
                    zzv zzvVar = zzalkVar.f4162a;
                    zzvVar.getClass();
                    zzt zztVar2 = new zzt(zzvVar);
                    zztVar2.j = b.b(zzalkVar.f4162a.k);
                    zzalkVar.f4162a = new zzv(zztVar2);
                    return true;
                }
            }
        } else {
            zzalkVar.f4162a.getClass();
            return false;
        }
        return true;
    }
}
