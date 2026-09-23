package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzit;
import com.google.android.gms.internal.drive.zziu;
import com.google.android.gms.internal.drive.zzjr;
import java.io.IOException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class zzit<MessageType extends zzit<MessageType, BuilderType>, BuilderType extends zziu<MessageType, BuilderType>> implements zzlq {
    private static boolean zznf = false;
    protected int zzne;

    @Override // com.google.android.gms.internal.drive.zzlq
    public final zzjc a() {
        try {
            zzkk zzkkVar = (zzkk) this;
            int d = zzkkVar.d();
            zzjc zzjcVar = zzjc.f;
            zzjk zzjkVar = new zzjk(d);
            zzjr zzjrVar = zzjkVar.f10204a;
            zzkkVar.c(zzjrVar);
            if (zzjrVar.r() == 0) {
                return new zzjm(zzjkVar.b);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public final byte[] f() {
        try {
            zzkk zzkkVar = (zzkk) this;
            int d = zzkkVar.d();
            byte[] bArr = new byte[d];
            Logger logger = zzjr.b;
            zzjr.zza zzaVar = new zzjr.zza(bArr, d);
            zzkkVar.c(zzaVar);
            if (zzaVar.r() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public int g() {
        throw new UnsupportedOperationException();
    }

    public void h(int i) {
        throw new UnsupportedOperationException();
    }
}
