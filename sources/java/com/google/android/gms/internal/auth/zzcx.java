package com.google.android.gms.internal.auth;

import android.support.v4.media.a;
import android.util.Log;

/* loaded from: classes.dex */
final class zzcx extends zzdc {
    @Override // com.google.android.gms.internal.auth.zzdc
    public final /* synthetic */ Object a(Object obj) {
        try {
            return Double.valueOf(Double.parseDouble((String) obj));
        } catch (NumberFormatException unused) {
            StringBuilder w = a.w("Invalid double value for ", this.b, ": ");
            w.append((String) obj);
            Log.e("PhenotypeFlag", w.toString());
            return null;
        }
    }
}
