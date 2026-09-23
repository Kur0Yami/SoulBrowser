package com.google.android.gms.internal.fido;

import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import java.io.Serializable;

/* loaded from: classes3.dex */
public abstract class zzbl implements Serializable {
    public static zzbl c() {
        return zzaz.f10274c;
    }

    public static zzbl d(PublicKeyCredentialParameters publicKeyCredentialParameters) {
        return new zzbn(publicKeyCredentialParameters);
    }

    public abstract Object a();

    public abstract boolean b();
}
