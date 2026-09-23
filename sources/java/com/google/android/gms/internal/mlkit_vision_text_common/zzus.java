package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes3.dex */
public final class zzus extends zza implements zzuu {
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzuu
    public final zzuv E3(ObjectWrapper objectWrapper, zzvh zzvhVar) {
        Parcel I1 = I1();
        zzc.a(I1, objectWrapper);
        zzuv zzuvVar = null;
        I1.writeStrongBinder(null);
        I1.writeInt(1);
        zzvhVar.writeToParcel(I1, 0);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder != null) {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.mlkit.vision.text.aidls.ITextRecognizer");
            if (queryLocalInterface instanceof zzuv) {
                zzuvVar = (zzuv) queryLocalInterface;
            } else {
                zzuvVar = new zzuv(readStrongBinder);
            }
        }
        f2.recycle();
        return zzuvVar;
    }
}
