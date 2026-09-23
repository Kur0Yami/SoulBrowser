package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@SafeParcelable.Class(creator = "KeyHandleCreator")
@Deprecated
/* loaded from: classes.dex */
public class KeyHandle extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<KeyHandle> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3804c;
    public final byte[] f;
    public final ProtocolVersion g;
    public final List h;

    public KeyHandle(int i, byte[] bArr, String str, ArrayList arrayList) {
        this.f3804c = i;
        this.f = bArr;
        try {
            this.g = ProtocolVersion.a(str);
            this.h = arrayList;
        } catch (ProtocolVersion.UnsupportedProtocolException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof KeyHandle)) {
            return false;
        }
        KeyHandle keyHandle = (KeyHandle) obj;
        List list = keyHandle.h;
        if (!Arrays.equals(this.f, keyHandle.f) || !this.g.equals(keyHandle.g)) {
            return false;
        }
        List list2 = this.h;
        if (list2 == null && list == null) {
            return true;
        }
        if (list2 != null && list != null && list2.containsAll(list) && list.containsAll(list2)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.f)), this.g, this.h);
    }

    public final String toString() {
        String obj;
        List list = this.h;
        if (list == null) {
            obj = "null";
        } else {
            obj = list.toString();
        }
        String encode = Base64Utils.encode(this.f);
        StringBuilder sb = new StringBuilder("{keyHandle: ");
        sb.append(encode);
        sb.append(", version: ");
        sb.append(this.g);
        sb.append(", transports: ");
        return a.p(sb, obj, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f3804c);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g.f3805c, false);
        SafeParcelWriter.writeTypedList(parcel, 4, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
