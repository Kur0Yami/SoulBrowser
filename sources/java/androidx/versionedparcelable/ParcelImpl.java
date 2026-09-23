package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;

@SuppressLint({"BanParcelableUsage"})
@RestrictTo
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final VersionedParcelable f1750c;

    /* renamed from: androidx.versionedparcelable.ParcelImpl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Parcelable.Creator<ParcelImpl> {
        @Override // android.os.Parcelable.Creator
        public final ParcelImpl createFromParcel(Parcel parcel) {
            return new ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final ParcelImpl[] newArray(int i) {
            return new ParcelImpl[i];
        }
    }

    public ParcelImpl(VersionedParcelable versionedParcelable) {
        this.f1750c = versionedParcelable;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        new VersionedParcelParcel(parcel).y(this.f1750c);
    }

    public ParcelImpl(Parcel parcel) {
        this.f1750c = new VersionedParcelParcel(parcel).o();
    }
}
