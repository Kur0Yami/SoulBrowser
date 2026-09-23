package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import com.google.android.gms.internal.ads.zzbgk;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@TargetApi(30)
/* loaded from: classes.dex */
public final class zzy extends zzx {
    @Override // com.google.android.gms.ads.internal.util.zzz
    public final int zzm(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Q9)).booleanValue()) {
            return 0;
        }
        return super.zzm(context);
    }
}
