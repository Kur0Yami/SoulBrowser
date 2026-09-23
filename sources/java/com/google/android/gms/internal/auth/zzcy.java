package com.google.android.gms.internal.auth;

import android.support.v4.media.a;
import android.util.Base64;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
final class zzcy extends zzdc {
    @Override // com.google.android.gms.internal.auth.zzdc
    public final Object a(Object obj) {
        try {
            return zzhs.i(Base64.decode((String) obj, 3));
        } catch (IOException | IllegalArgumentException unused) {
            StringBuilder w = a.w("Invalid byte[] value for ", this.b, ": ");
            w.append((String) obj);
            Log.e("PhenotypeFlag", w.toString());
            return null;
        }
    }
}
