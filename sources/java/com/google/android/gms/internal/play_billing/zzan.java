package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class zzan extends zzas implements zzap {
    @Override // com.google.android.gms.internal.play_billing.zzap
    public final int B(String str, String str2) {
        Parcel I1 = I1();
        I1.writeInt(3);
        I1.writeString(str);
        I1.writeString(str2);
        Parcel f2 = f2(5, I1);
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final Bundle O(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        I1.writeString(str2);
        I1.writeString(str3);
        I1.writeString(null);
        int i2 = zzau.f11446a;
        I1.writeInt(1);
        bundle.writeToParcel(I1, 0);
        Parcel f2 = f2(8, I1);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) zzau.a(f2);
        f2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final Bundle P0(String str, Bundle bundle, String str2) {
        Parcel I1 = I1();
        I1.writeInt(9);
        I1.writeString(str);
        I1.writeString(str2);
        int i = zzau.f11446a;
        I1.writeInt(1);
        bundle.writeToParcel(I1, 0);
        Parcel f2 = f2(12, I1);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) zzau.a(f2);
        f2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final int T0(int i, Bundle bundle, String str, String str2) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        I1.writeString(str2);
        int i2 = zzau.f11446a;
        I1.writeInt(1);
        bundle.writeToParcel(I1, 0);
        Parcel f2 = f2(10, I1);
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final Bundle Y(String str, Bundle bundle, String str2) {
        Parcel I1 = I1();
        I1.writeInt(9);
        I1.writeString(str);
        I1.writeString(str2);
        int i = zzau.f11446a;
        I1.writeInt(1);
        bundle.writeToParcel(I1, 0);
        Parcel f2 = f2(902, I1);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) zzau.a(f2);
        f2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final Bundle b0(String str, String str2, String str3) {
        Parcel I1 = I1();
        I1.writeInt(3);
        I1.writeString(str);
        I1.writeString(str2);
        I1.writeString(str3);
        Parcel f2 = f2(4, I1);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) zzau.a(f2);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final Bundle h4(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        I1.writeString(str2);
        I1.writeString(str3);
        int i2 = zzau.f11446a;
        I1.writeInt(1);
        bundle.writeToParcel(I1, 0);
        Parcel f2 = f2(11, I1);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) zzau.a(f2);
        f2.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final int i2(int i, String str, String str2) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        I1.writeString(str2);
        Parcel f2 = f2(1, I1);
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final Bundle w4(String str, String str2, String str3) {
        Parcel I1 = I1();
        I1.writeInt(3);
        I1.writeString(str);
        I1.writeString(str2);
        I1.writeString(str3);
        I1.writeString(null);
        Parcel f2 = f2(3, I1);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) zzau.a(f2);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.play_billing.zzap
    public final Bundle x4(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        I1.writeString(str2);
        int i2 = zzau.f11446a;
        I1.writeInt(1);
        bundle.writeToParcel(I1, 0);
        I1.writeInt(1);
        bundle2.writeToParcel(I1, 0);
        Parcel f2 = f2(901, I1);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle3 = (Bundle) zzau.a(f2);
        f2.recycle();
        return bundle3;
    }
}
