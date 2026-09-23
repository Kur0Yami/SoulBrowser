package com.google.android.gms.internal.auth;

import android.support.v4.media.a;
import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcv extends zzdc {
    @Override // com.google.android.gms.internal.auth.zzdc
    public final /* synthetic */ Object a(Object obj) {
        try {
            return Long.valueOf(Long.parseLong((String) obj));
        } catch (NumberFormatException unused) {
            StringBuilder w = a.w("Invalid long value for ", this.b, ": ");
            w.append((String) obj);
            Log.e("PhenotypeFlag", w.toString());
            return null;
        }
    }
}
