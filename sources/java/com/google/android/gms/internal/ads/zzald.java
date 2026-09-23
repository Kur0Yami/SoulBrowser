package com.google.android.gms.internal.ads;

import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzald extends zzalm {
    public zzafb n;
    public zzalc o;

    @Override // com.google.android.gms.internal.ads.zzalm
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final long b(zzer zzerVar) {
        byte[] bArr = zzerVar.f6834a;
        if (bArr[0] == -1) {
            int i = (bArr[2] & UByte.MAX_VALUE) >> 4;
            if (i != 6) {
                if (i == 7) {
                    i = 7;
                }
                int b = zzaew.b(i, zzerVar);
                zzerVar.E(0);
                return b;
            }
            zzerVar.G(4);
            zzerVar.o();
            int b2 = zzaew.b(i, zzerVar);
            zzerVar.E(0);
            return b2;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzalm
    public final boolean c(zzer zzerVar, long j, zzalk zzalkVar) {
        byte[] bArr = zzerVar.f6834a;
        zzafb zzafbVar = this.n;
        if (zzafbVar == null) {
            zzafb zzafbVar2 = new zzafb(bArr, 17);
            this.n = zzafbVar2;
            zzt zztVar = new zzt(zzafbVar2.b(Arrays.copyOfRange(bArr, 9, zzerVar.f6835c), null));
            zztVar.d("audio/ogg");
            zzalkVar.f4162a = new zzv(zztVar);
            return true;
        }
        byte b = bArr[0];
        if ((b & ByteCompanionObject.MAX_VALUE) == 3) {
            zzafa a2 = zzaey.a(zzerVar);
            zzafb zzafbVar3 = new zzafb(zzafbVar.f3966a, zzafbVar.b, zzafbVar.f3967c, zzafbVar.d, zzafbVar.e, zzafbVar.g, zzafbVar.h, zzafbVar.j, a2, zzafbVar.l);
            this.n = zzafbVar3;
            this.o = new zzalc(zzafbVar3, a2);
            return true;
        }
        if (b != -1) {
            return true;
        }
        zzalc zzalcVar = this.o;
        if (zzalcVar != null) {
            zzalcVar.f4155c = j;
            zzalkVar.b = zzalcVar;
        }
        zzalkVar.f4162a.getClass();
        return false;
    }
}
