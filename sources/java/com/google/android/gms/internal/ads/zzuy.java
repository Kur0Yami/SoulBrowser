package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;

/* loaded from: classes.dex */
final /* synthetic */ class zzuy implements zzvb {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzuy f9306a = new Object();

    @Override // com.google.android.gms.internal.ads.zzvb
    public final /* synthetic */ int zza(Object obj) {
        HashMap hashMap = zzvc.f9311a;
        String str = ((zzuj) obj).f9294a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        if (Build.VERSION.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
            return 0;
        }
        return -1;
    }
}
