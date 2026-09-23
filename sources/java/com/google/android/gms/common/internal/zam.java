package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.work.impl.workers.a;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zam extends com.google.android.gms.internal.base.zaa implements IInterface {
    public zam(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    public final IObjectWrapper zae(IObjectWrapper iObjectWrapper, zax zaxVar) {
        Parcel zaa = zaa();
        com.google.android.gms.internal.base.zac.c(zaa, iObjectWrapper);
        com.google.android.gms.internal.base.zac.b(zaa, zaxVar);
        return a.i(zab(2, zaa));
    }
}
