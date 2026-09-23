package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.internal.ShowFirstParty;
import java.util.concurrent.TimeUnit;

@ShowFirstParty
/* loaded from: classes.dex */
public final class zzfuo {
    public static zzfvt a(Context context, zzbbq zzbbqVar, String str, String str2, zzfuf zzfufVar) {
        zzfvt zzfvtVar;
        zzfun zzfunVar = new zzfun(context, zzbbqVar, str, str2, zzfufVar);
        try {
            zzfvtVar = (zzfvt) zzfunVar.e.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzfunVar.b(2009, zzfunVar.h, e);
            zzfvtVar = null;
        }
        zzfunVar.b(3004, zzfunVar.h, null);
        if (zzfvtVar != null) {
            if (zzfvtVar.g == 7) {
                zzfuf.e = 3;
            } else {
                zzfuf.e = 2;
            }
        }
        if (zzfvtVar == null) {
            return new zzfvt();
        }
        return zzfvtVar;
    }
}
