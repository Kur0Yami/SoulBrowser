package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes3.dex */
public final class zzuw extends zza implements zzuy {
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzuy
    public final zzuv F2(ObjectWrapper objectWrapper) {
        zzuv zzuvVar;
        Parcel I1 = I1();
        zzc.a(I1, objectWrapper);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzuvVar = null;
        } else {
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

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzuy
    public final zzuv Q2(ObjectWrapper objectWrapper, zzvh zzvhVar) {
        zzuv zzuvVar;
        Parcel I1 = I1();
        zzc.a(I1, objectWrapper);
        I1.writeInt(1);
        zzvhVar.writeToParcel(I1, 0);
        Parcel f2 = f2(2, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzuvVar = null;
        } else {
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
