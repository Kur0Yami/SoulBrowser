package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* loaded from: classes.dex */
public abstract class zzu extends AbstractSafeParcelable {

    /* renamed from: c, reason: collision with root package name */
    public volatile transient boolean f3724c = false;

    public abstract void F(int i, Parcel parcel);

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkState(!this.f3724c);
        this.f3724c = true;
        F(i, parcel);
    }
}
