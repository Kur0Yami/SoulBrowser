package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;
import android.provider.CalendarContract;

/* loaded from: classes.dex */
final class zzbvs implements DialogInterface.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbvu f4930c;

    public zzbvs(zzbvu zzbvuVar) {
        this.f4930c = zzbvuVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzbvu zzbvuVar = this.f4930c;
        zzbvuVar.getClass();
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", zzbvuVar.e);
        data.putExtra("eventLocation", zzbvuVar.i);
        data.putExtra("description", zzbvuVar.h);
        long j = zzbvuVar.f;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = zzbvuVar.g;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        com.google.android.gms.ads.internal.zzt.zzc();
        com.google.android.gms.ads.internal.util.zzs.zzaa(zzbvuVar.d, data);
    }
}
