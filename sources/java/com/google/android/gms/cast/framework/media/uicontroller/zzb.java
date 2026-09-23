package com.google.android.gms.cast.framework.media.uicontroller;

import android.util.Log;
import android.view.View;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.cast.zzbm;
import com.google.android.gms.common.internal.Preconditions;
import j$.util.Objects;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzb implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f3533c;

    public zzb(UIMediaController uIMediaController) {
        Objects.requireNonNull(uIMediaController);
        this.f3533c = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        zzbm zzbmVar;
        CastSession c2 = CastContext.e(this.f3533c.f3530a.getApplicationContext()).d().c();
        if (c2 != null && c2.c()) {
            try {
                Preconditions.checkMainThread("Must be called from the main thread.");
                zzbm zzbmVar2 = c2.i;
                if (zzbmVar2 != null && zzbmVar2.k()) {
                    Preconditions.checkState(zzbmVar2.k(), "Not connected to device");
                    if (zzbmVar2.m) {
                        z = true;
                        boolean z2 = !z;
                        Preconditions.checkMainThread("Must be called from the main thread.");
                        zzbmVar = c2.i;
                        if (zzbmVar == null && zzbmVar.k()) {
                            zzbmVar.q(z2);
                            return;
                        }
                    }
                }
                z = false;
                boolean z22 = !z;
                Preconditions.checkMainThread("Must be called from the main thread.");
                zzbmVar = c2.i;
                if (zzbmVar == null) {
                }
            } catch (IOException e) {
                e = e;
                Logger logger = UIMediaController.h;
                Log.e(logger.f3604a, logger.d("Unable to call CastSession.setMute(boolean).", e));
            } catch (IllegalArgumentException e2) {
                e = e2;
                Logger logger2 = UIMediaController.h;
                Log.e(logger2.f3604a, logger2.d("Unable to call CastSession.setMute(boolean).", e));
            }
        }
    }
}
