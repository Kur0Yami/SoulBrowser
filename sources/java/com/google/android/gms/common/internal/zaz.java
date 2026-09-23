package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.mycompany.app.dialog.a;

/* loaded from: classes.dex */
public final class zaz extends RemoteCreator {
    private static final zaz zaa = new zaz();

    private zaz() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View zaa(Context context, int i, int i2) {
        zaz zazVar = zaa;
        try {
            zax zaxVar = new zax(1, i, i2, null);
            return (View) ObjectWrapper.f2(((zam) zazVar.getRemoteCreatorInstance(context)).zae(new ObjectWrapper(context), zaxVar));
        } catch (Exception e) {
            throw new Exception(a.m(new StringBuilder(String.valueOf(i).length() + 42 + String.valueOf(i2).length()), "Could not get button with size ", i, " and color ", i2), e);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        if (queryLocalInterface instanceof zam) {
            return (zam) queryLocalInterface;
        }
        return new zam(iBinder);
    }
}
