package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;
import com.google.android.gms.internal.fido.zzgf;
import java.util.Arrays;

@SafeParcelable.Class(creator = "RegisterResponseDataCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes.dex */
public class RegisterResponseData extends ResponseData {

    @NonNull
    public static final Parcelable.Creator<RegisterResponseData> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f3808c;
    public final ProtocolVersion f;
    public final String g;

    public RegisterResponseData(byte[] bArr, String str, String str2) {
        this.f3808c = bArr;
        try {
            this.f = ProtocolVersion.a(str);
            this.g = str2;
        } catch (ProtocolVersion.UnsupportedProtocolException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RegisterResponseData)) {
            return false;
        }
        RegisterResponseData registerResponseData = (RegisterResponseData) obj;
        if (!Objects.equal(this.f, registerResponseData.f) || !Arrays.equals(this.f3808c, registerResponseData.f3808c) || !Objects.equal(this.g, registerResponseData.g)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f, Integer.valueOf(Arrays.hashCode(this.f3808c)), this.g);
    }

    public final String toString() {
        zzbi a2 = zzbj.a(this);
        a2.b(this.f, "protocolVersion");
        zzgf zzgfVar = zzgf.f10317a;
        byte[] bArr = this.f3808c;
        a2.b(zzgfVar.c(bArr, bArr.length), "registerData");
        String str = this.g;
        if (str != null) {
            a2.b(str, "clientDataString");
        }
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f3808c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f.f3805c, false);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
