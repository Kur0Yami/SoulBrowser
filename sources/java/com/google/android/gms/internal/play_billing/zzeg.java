package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import com.google.android.gms.internal.play_billing.zzef;
import com.google.android.gms.internal.play_billing.zzeg;
import java.io.IOException;

/* loaded from: classes3.dex */
public abstract class zzeg<MessageType extends zzeg<MessageType, BuilderType>, BuilderType extends zzef<MessageType, BuilderType>> implements zzhc {
    protected transient int zza;

    public final byte[] b() {
        try {
            zzfv zzfvVar = (zzfv) this;
            int zzn = zzfvVar.zzn();
            byte[] bArr = new byte[zzn];
            boolean z = zzfc.b;
            zzez zzezVar = new zzez(bArr, zzn);
            zzfvVar.a(zzezVar);
            zzezVar.a();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(a.l("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e);
        }
    }

    public int c(zzhm zzhmVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhc
    public final zzev zzj() {
        try {
            zzfv zzfvVar = (zzfv) this;
            int zzn = zzfvVar.zzn();
            zzev zzevVar = zzev.f;
            byte[] bArr = new byte[zzn];
            boolean z = zzfc.b;
            zzez zzezVar = new zzez(bArr, zzn);
            zzfvVar.a(zzezVar);
            zzezVar.a();
            return new zzet(bArr);
        } catch (IOException e) {
            throw new RuntimeException(a.l("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e);
        }
    }
}
