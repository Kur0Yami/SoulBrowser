package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import java.util.Arrays;

@SafeParcelable.Class(creator = "SignResponseDataCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes.dex */
public class SignResponseData extends ResponseData {

    @NonNull
    public static final Parcelable.Creator<SignResponseData> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f3811c;
    public final String f;
    public final byte[] g;
    public final byte[] h;

    public SignResponseData(byte[] bArr, String str, byte[] bArr2, byte[] bArr3) {
        this.f3811c = (byte[]) Preconditions.checkNotNull(bArr);
        this.f = (String) Preconditions.checkNotNull(str);
        this.g = (byte[]) Preconditions.checkNotNull(bArr2);
        this.h = (byte[]) Preconditions.checkNotNull(bArr3);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignResponseData)) {
            return false;
        }
        SignResponseData signResponseData = (SignResponseData) obj;
        if (!Arrays.equals(this.f3811c, signResponseData.f3811c) || !Objects.equal(this.f, signResponseData.f) || !Arrays.equals(this.g, signResponseData.g) || !Arrays.equals(this.h, signResponseData.h)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.f3811c)), this.f, Integer.valueOf(Arrays.hashCode(this.g)), Integer.valueOf(Arrays.hashCode(this.h)));
    }

    public final String toString() {
        zzbi a2 = zzbj.a(this);
        zzgf zzgfVar = zzgf.f10317a;
        byte[] bArr = this.f3811c;
        a2.b(zzgfVar.c(bArr, bArr.length), "keyHandle");
        a2.b(this.f, "clientDataString");
        byte[] bArr2 = this.g;
        a2.b(zzgfVar.c(bArr2, bArr2.length), "signatureData");
        byte[] bArr3 = this.h;
        a2.b(zzgfVar.c(bArr3, bArr3.length), "application");
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f3811c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.g, false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
