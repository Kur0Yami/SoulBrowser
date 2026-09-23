package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhwq extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzhwr f8849a;

    public zzhwq(zzhwr zzhwrVar) {
        this.f8849a = zzhwrVar;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        try {
            zzhwc zzhwcVar = zzhwc.f8845c;
            zzhwr zzhwrVar = this.f8849a;
            Mac mac = (Mac) zzhwcVar.f8846a.zza(zzhwrVar.b);
            mac.init(zzhwrVar.f8851c);
            return mac;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
