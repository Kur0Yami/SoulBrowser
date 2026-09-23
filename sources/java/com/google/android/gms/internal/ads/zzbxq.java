package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "NativeAdLayoutInfoParcelCreator")
/* loaded from: classes.dex */
public final class zzbxq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbxq> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final View f4964c;
    public final Map f;

    public zzbxq(IBinder iBinder, IBinder iBinder2) {
        this.f4964c = (View) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder));
        this.f = (Map) ObjectWrapper.f2(IObjectWrapper.Stub.I1(iBinder2));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeIBinder(parcel, 1, new ObjectWrapper(this.f4964c).asBinder(), false);
        SafeParcelWriter.writeIBinder(parcel, 2, new ObjectWrapper(this.f).asBinder(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
