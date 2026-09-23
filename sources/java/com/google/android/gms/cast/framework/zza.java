package com.google.android.gms.cast.framework;

import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.tasks.OnSuccessListener;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final /* synthetic */ class zza implements OnSuccessListener {
    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* synthetic */ void onSuccess(Object obj) {
        synchronized (CastButtonFactory.d) {
            CastButtonFactory.f3464c.add(new WeakReference(null));
        }
        com.google.android.gms.internal.cast.zzr.a(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }
}
