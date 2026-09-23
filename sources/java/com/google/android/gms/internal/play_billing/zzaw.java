package com.google.android.gms.internal.play_billing;

import android.os.Parcel;

/* loaded from: classes3.dex */
public final class zzaw extends zzas implements zzay {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzay
    public final void u0(String str, String str2, zzba zzbaVar) {
        Parcel I1 = I1();
        I1.writeString(str);
        I1.writeString(str2);
        zzau.b(I1, (zzat) zzbaVar);
        try {
            this.f11445c.transact(1, I1, null, 1);
        } finally {
            I1.recycle();
        }
    }
}
