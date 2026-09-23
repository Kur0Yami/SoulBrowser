package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.p000authapi.zbbi;
import com.google.android.gms.internal.p000authapi.zbbl;
import java.util.ArrayList;

@SafeParcelable.Class(creator = "RevokeAccessRequestCreator")
/* loaded from: classes.dex */
public class RevokeAccessRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<RevokeAccessRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zbbi f3367c;
    public final Account f;
    public final String g;

    /* loaded from: classes.dex */
    public static abstract class Builder {
    }

    public RevokeAccessRequest(ArrayList arrayList, Account account, String str) {
        zbbl zbblVar = zbbi.f;
        Object[] array = arrayList.toArray();
        int length = array.length;
        for (int i = 0; i < length; i++) {
            if (array[i] == null) {
                throw new NullPointerException(a.r(i, "at index ", new StringBuilder(String.valueOf(i).length() + 9)));
            }
        }
        this.f3367c = zbbi.r(array.length, array);
        this.f = account;
        this.g = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof RevokeAccessRequest) {
            RevokeAccessRequest revokeAccessRequest = (RevokeAccessRequest) obj;
            zbbi zbbiVar = this.f3367c;
            int size = zbbiVar.size();
            zbbi zbbiVar2 = revokeAccessRequest.f3367c;
            if (size == zbbiVar2.size() && zbbiVar.containsAll(zbbiVar2) && Objects.equal(this.f, revokeAccessRequest.f) && Objects.equal(this.g, revokeAccessRequest.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3367c, this.f, this.g);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f3367c, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
