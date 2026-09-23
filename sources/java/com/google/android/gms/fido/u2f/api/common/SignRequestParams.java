package com.google.android.gms.fido.u2f.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@SafeParcelable.Class(creator = "SignRequestParamsCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes.dex */
public class SignRequestParams extends RequestParams {

    @NonNull
    public static final Parcelable.Creator<SignRequestParams> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Integer f3810c;
    public final Double f;
    public final Uri g;
    public final byte[] h;
    public final List i;
    public final ChannelIdValue j;
    public final String k;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public SignRequestParams(Integer num, Double d, Uri uri, byte[] bArr, ArrayList arrayList, ChannelIdValue channelIdValue, String str) {
        boolean z;
        this.f3810c = num;
        this.f = d;
        this.g = uri;
        this.h = bArr;
        this.i = arrayList;
        this.j = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                RegisteredKey registeredKey = (RegisteredKey) obj;
                if (registeredKey.f != null || uri != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z, "registered key has null appId and no request appId is provided");
                Preconditions.checkArgument(true, "register request has null challenge and no default challenge isprovided");
                String str2 = registeredKey.f;
                if (str2 != null) {
                    hashSet.add(Uri.parse(str2));
                }
            }
        }
        Preconditions.checkArgument(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.k = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SignRequestParams)) {
            return false;
        }
        SignRequestParams signRequestParams = (SignRequestParams) obj;
        List list = signRequestParams.i;
        if (Objects.equal(this.f3810c, signRequestParams.f3810c) && Objects.equal(this.f, signRequestParams.f) && Objects.equal(this.g, signRequestParams.g) && Arrays.equals(this.h, signRequestParams.h)) {
            List list2 = this.i;
            if (list2.containsAll(list) && list.containsAll(list2) && Objects.equal(this.j, signRequestParams.j) && Objects.equal(this.k, signRequestParams.k)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3810c, this.g, this.f, this.i, this.j, this.k, Integer.valueOf(Arrays.hashCode(this.h)));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIntegerObject(parcel, 2, this.f3810c, false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, this.f, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.h, false);
        SafeParcelWriter.writeTypedList(parcel, 6, this.i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.j, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.k, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
