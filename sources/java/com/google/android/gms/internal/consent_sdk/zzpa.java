package com.google.android.gms.internal.consent_sdk;

import android.support.v4.media.a;
import com.google.android.gms.internal.consent_sdk.zzoz;
import com.google.android.gms.internal.consent_sdk.zzpa;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzpa<MessageType extends zzpa<MessageType, BuilderType>, BuilderType extends zzoz<MessageType, BuilderType>> implements zzrq {
    protected int zza;

    public final void b(OutputStream outputStream) {
        zzqm zzqmVar = (zzqm) this;
        int zzn = zzqmVar.zzn();
        Logger logger = zzpv.b;
        if (zzn > 4096) {
            zzn = 4096;
        }
        zzpt zzptVar = new zzpt(outputStream, zzn);
        zzqmVar.a(zzptVar);
        if (zzptVar.f > 0) {
            zzptVar.C();
        }
    }

    public int c(zzsa zzsaVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrq
    public final zzpm zzk() {
        try {
            zzqm zzqmVar = (zzqm) this;
            int zzn = zzqmVar.zzn();
            zzpm zzpmVar = zzpm.f;
            byte[] bArr = new byte[zzn];
            Logger logger = zzpv.b;
            zzpr zzprVar = new zzpr(bArr, zzn);
            zzqmVar.a(zzprVar);
            if (zzn - zzprVar.f == 0) {
                return new zzpk(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException(a.l("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e);
        }
    }
}
