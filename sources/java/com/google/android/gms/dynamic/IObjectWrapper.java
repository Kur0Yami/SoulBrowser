package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public interface IObjectWrapper extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements IObjectWrapper {
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.common.zza] */
        public static IObjectWrapper I1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            if (queryLocalInterface instanceof IObjectWrapper) {
                return (IObjectWrapper) queryLocalInterface;
            }
            return new com.google.android.gms.internal.common.zza(iBinder, "com.google.android.gms.dynamic.IObjectWrapper");
        }

        /** Public API alias for bundled ML Kit OCR (expects asInterface). */
        public static IObjectWrapper asInterface(IBinder iBinder) {
            return I1(iBinder);
        }
    }
}
