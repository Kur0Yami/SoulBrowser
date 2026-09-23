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
import java.util.HashSet;
import java.util.List;

@SafeParcelable.Class(creator = "RegisterRequestParamsCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes.dex */
public class RegisterRequestParams extends RequestParams {

    @NonNull
    public static final Parcelable.Creator<RegisterRequestParams> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Integer f3807c;
    public final Double f;
    public final Uri g;
    public final List h;
    public final List i;
    public final ChannelIdValue j;
    public final String k;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public RegisterRequestParams(Integer num, Double d, Uri uri, ArrayList arrayList, ArrayList arrayList2, ChannelIdValue channelIdValue, String str) {
        boolean z;
        boolean z2;
        boolean z3;
        this.f3807c = num;
        this.f = d;
        this.g = uri;
        if (arrayList != null && !arrayList.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "empty list of register requests is provided");
        this.h = arrayList;
        this.i = arrayList2;
        this.j = channelIdValue;
        HashSet hashSet = new HashSet();
        if (uri != null) {
            hashSet.add(uri);
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            RegisterRequest registerRequest = (RegisterRequest) obj;
            if (uri != null || registerRequest.h != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            Preconditions.checkArgument(z3, "register request has null appId and no request appId is provided");
            String str2 = registerRequest.h;
            if (str2 != null) {
                hashSet.add(Uri.parse(str2));
            }
        }
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            RegisteredKey registeredKey = (RegisteredKey) obj2;
            if (uri != null || registeredKey.f != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.checkArgument(z2, "registered key has null appId and no request appId is provided");
            String str3 = registeredKey.f;
            if (str3 != null) {
                hashSet.add(Uri.parse(str3));
            }
        }
        Preconditions.checkArgument(str == null || str.length() <= 80, "Display Hint cannot be longer than 80 characters");
        this.k = str;
    }

    public final boolean equals(Object obj) {
        List list;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterRequestParams)) {
            return false;
        }
        RegisterRequestParams registerRequestParams = (RegisterRequestParams) obj;
        List list2 = registerRequestParams.i;
        if (Objects.equal(this.f3807c, registerRequestParams.f3807c) && Objects.equal(this.f, registerRequestParams.f) && Objects.equal(this.g, registerRequestParams.g) && Objects.equal(this.h, registerRequestParams.h) && ((((list = this.i) == null && list2 == null) || (list != null && list2 != null && list.containsAll(list2) && list2.containsAll(list))) && Objects.equal(this.j, registerRequestParams.j) && Objects.equal(this.k, registerRequestParams.k))) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3807c, this.g, this.f, this.h, this.i, this.j, this.k);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIntegerObject(parcel, 2, this.f3807c, false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, this.f, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.h, false);
        SafeParcelWriter.writeTypedList(parcel, 6, this.i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.j, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.k, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
