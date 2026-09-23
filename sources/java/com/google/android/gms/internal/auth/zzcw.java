package com.google.android.gms.internal.auth;

import android.support.v4.media.a;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcw extends zzdc {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.zzdc
    public final /* synthetic */ Object a(Object obj) {
        if (zzcb.b.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (zzcb.f9502c.matcher(obj).matches()) {
            return Boolean.FALSE;
        }
        StringBuilder w = a.w("Invalid boolean value for ", this.b, ": ");
        w.append((String) obj);
        Log.e("PhenotypeFlag", w.toString());
        return null;
    }
}
