package com.google.android.gms.cast.framework;

import android.view.MenuItem;
import com.google.android.gms.internal.cast.zzpm;
import com.google.android.gms.tasks.OnSuccessListener;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final /* synthetic */ class zze implements OnSuccessListener {
    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* synthetic */ void onSuccess(Object obj) {
        MenuItem menuItem = (MenuItem) obj;
        synchronized (CastButtonFactory.b) {
            CastButtonFactory.f3463a.add(new WeakReference(menuItem));
        }
        com.google.android.gms.internal.cast.zzr.a(zzpm.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }
}
