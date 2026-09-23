package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes3.dex */
public final class zzi extends zza implements zzk {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzk
    public final zzh Y2(ObjectWrapper objectWrapper, zzp zzpVar) {
        zzh zzaVar;
        Parcel I1 = I1();
        zzc.a(I1, objectWrapper);
        I1.writeInt(1);
        zzpVar.writeToParcel(I1, 0);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
            if (queryLocalInterface instanceof zzh) {
                zzaVar = (zzh) queryLocalInterface;
            } else {
                zzaVar = new zza(readStrongBinder, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizer");
            }
        }
        f2.recycle();
        return zzaVar;
    }
}
