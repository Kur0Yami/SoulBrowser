package com.google.android.gms.internal.ads;

import android.os.AsyncTask;

/* loaded from: classes.dex */
public abstract class zzftr extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public zzfts f7651a;
    public final zzftj b;

    public zzftr(zzftj zzftjVar) {
        this.b = zzftjVar;
    }

    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        zzfts zzftsVar = this.f7651a;
        if (zzftsVar != null) {
            zzftsVar.f7653c = null;
            zzftr zzftrVar = (zzftr) zzftsVar.b.poll();
            zzftsVar.f7653c = zzftrVar;
            if (zzftrVar != null) {
                zzftrVar.executeOnExecutor(zzftsVar.f7652a, new Object[0]);
            }
        }
    }
}
