package com.google.android.gms.internal.measurement;

import android.support.v4.media.a;
import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zzil;
import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public abstract class zzil<MessageType extends zzil<MessageType, BuilderType>, BuilderType extends zzik<MessageType, BuilderType>> implements zzlj {
    protected int zzb;

    /* JADX WARN: Type inference failed for: r5v2, types: [com.google.android.gms.internal.measurement.zzjk, java.lang.Object] */
    @Override // com.google.android.gms.internal.measurement.zzlj
    public final zzjb b() {
        zzjk zzjkVar;
        try {
            zzkc zzkcVar = (zzkc) this;
            int i = zzkcVar.zzd;
            if (i == -1) {
                i = zzlr.f10396c.a(zzkcVar.getClass()).zza(zzkcVar);
                zzkcVar.zzd = i;
            }
            zzjb zzjbVar = zzjb.f;
            byte[] bArr = new byte[i];
            int i2 = zzjj.b;
            zzjg zzjgVar = new zzjg(bArr, i);
            zzkc zzkcVar2 = (zzkc) this;
            zzlu a2 = zzlr.f10396c.a(zzkcVar2.getClass());
            zzjk zzjkVar2 = zzjgVar.f10378a;
            if (zzjkVar2 != null) {
                zzjkVar = zzjkVar2;
            } else {
                ?? obj = new Object();
                Charset charset = zzkk.f10385a;
                zzjgVar.f10378a = obj;
                zzjkVar = obj;
            }
            a2.c(zzkcVar2, zzjkVar);
            if (i - zzjgVar.f10377c == 0) {
                return new zziy(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException(a.l("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e);
        }
    }
}
