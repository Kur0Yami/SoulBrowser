package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.ObjectWrapper;

@SafeParcelable.Class(creator = "CastMediaOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class CastMediaOptions extends AbstractSafeParcelable {

    /* renamed from: c, reason: collision with root package name */
    public final String f3494c;
    public final String f;
    public final zzd g;
    public final NotificationOptions h;
    public final boolean i;
    public final boolean j;
    public static final Logger k = new Logger("CastMediaOptions", null);

    @NonNull
    public static final Parcelable.Creator<CastMediaOptions> CREATOR = new Object();

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f3495a;
        public ImagePicker b;

        /* renamed from: c, reason: collision with root package name */
        public NotificationOptions f3496c = new NotificationOptions.Builder().a();
        public boolean d = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.google.android.gms.cast.framework.media.zzd] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    public CastMediaOptions(String str, String str2, IBinder iBinder, NotificationOptions notificationOptions, boolean z, boolean z2) {
        ?? zzaVar;
        this.f3494c = str;
        this.f = str2;
        if (iBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.IImagePicker");
            if (queryLocalInterface instanceof zzd) {
                zzaVar = (zzd) queryLocalInterface;
            } else {
                zzaVar = new com.google.android.gms.internal.cast.zza(iBinder, "com.google.android.gms.cast.framework.media.IImagePicker");
            }
        }
        this.g = zzaVar;
        this.h = notificationOptions;
        this.i = z;
        this.j = z2;
    }

    public final ImagePicker F() {
        zzd zzdVar = this.g;
        if (zzdVar != null) {
            try {
                return (ImagePicker) ObjectWrapper.f2(zzdVar.zzf());
            } catch (RemoteException e) {
                k.a(e, "Unable to call %s on %s.", "getWrappedClientObject", "zzd");
                return null;
            }
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder asBinder;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3494c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        zzd zzdVar = this.g;
        if (zzdVar == null) {
            asBinder = null;
        } else {
            asBinder = zzdVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 4, asBinder, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.i);
        SafeParcelWriter.writeBoolean(parcel, 7, this.j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
