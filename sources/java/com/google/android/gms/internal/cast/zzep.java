package com.google.android.gms.internal.cast;

import android.hardware.display.DisplayManager;
import android.util.Log;
import android.view.Surface;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class zzep extends zzeo {

    /* renamed from: c, reason: collision with root package name */
    public final zzew f9685c;
    public final /* synthetic */ zzem f;

    public zzep(zzem zzemVar, zzew zzewVar) {
        this.f = zzemVar;
        this.f9685c = zzewVar;
    }

    @Override // com.google.android.gms.internal.cast.zzeo, com.google.android.gms.internal.cast.zzey
    public final void C4(int i, int i2, Surface surface, ApiMetadata apiMetadata) {
        Logger logger = zzet.b;
        logger.b("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) this.f9685c.getContext().getSystemService("display");
        zzem zzemVar = this.f;
        if (displayManager == null) {
            Log.e(logger.f3604a, logger.d("Unable to get the display manager", new Object[0]));
            zzemVar.setResult((zzem) new zzes(Status.RESULT_INTERNAL_ERROR));
        } else {
            zzemVar.getClass();
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzeo, com.google.android.gms.internal.cast.zzey
    public final void H3(ApiMetadata apiMetadata) {
        zzet.b.b("onConnectedWithDisplay", new Object[0]);
        this.f.getClass();
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzeo, com.google.android.gms.internal.cast.zzey
    public final void V3(int i, ApiMetadata apiMetadata) {
        Logger logger = zzet.b;
        zzet.b.b("onError: %d", Integer.valueOf(i));
        this.f.getClass();
        throw null;
    }
}
