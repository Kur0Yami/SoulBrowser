package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;

/* loaded from: classes.dex */
final class zzav implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f3114c;

    public zzav(zzaw zzawVar, Context context) {
        this.f3114c = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.zzt.zzc();
        zzs.zzab(this.f3114c, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
