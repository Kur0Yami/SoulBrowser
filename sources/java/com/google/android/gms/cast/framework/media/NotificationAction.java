package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "NotificationActionCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class NotificationAction extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<NotificationAction> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3501c;
    public final int f;
    public final String g;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public NotificationAction(String str, int i, String str2) {
        this.f3501c = str;
        this.f = i;
        this.g = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3501c, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
