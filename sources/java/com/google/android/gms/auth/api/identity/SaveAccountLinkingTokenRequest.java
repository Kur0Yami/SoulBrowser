package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "SaveAccountLinkingTokenRequestCreator")
/* loaded from: classes.dex */
public class SaveAccountLinkingTokenRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<SaveAccountLinkingTokenRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final PendingIntent f3368c;
    public final String f;
    public final String g;
    public final List h;
    public final String i;
    public final int j;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public SaveAccountLinkingTokenRequest(PendingIntent pendingIntent, String str, String str2, ArrayList arrayList, String str3, int i) {
        this.f3368c = pendingIntent;
        this.f = str;
        this.g = str2;
        this.h = arrayList;
        this.i = str3;
        this.j = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SaveAccountLinkingTokenRequest)) {
            return false;
        }
        SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest = (SaveAccountLinkingTokenRequest) obj;
        List list = this.h;
        int size = list.size();
        List list2 = saveAccountLinkingTokenRequest.h;
        if (size != list2.size() || !list.containsAll(list2) || !Objects.equal(this.f3368c, saveAccountLinkingTokenRequest.f3368c) || !Objects.equal(this.f, saveAccountLinkingTokenRequest.f) || !Objects.equal(this.g, saveAccountLinkingTokenRequest.g) || !Objects.equal(this.i, saveAccountLinkingTokenRequest.i) || this.j != saveAccountLinkingTokenRequest.j) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3368c, this.f, this.g, this.h, this.i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3368c, i, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.h, false);
        SafeParcelWriter.writeString(parcel, 5, this.i, false);
        SafeParcelWriter.writeInt(parcel, 6, this.j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
