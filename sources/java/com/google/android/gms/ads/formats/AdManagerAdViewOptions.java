package com.google.android.gms.ads.formats;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AdManagerAdViewOptionsCreator")
/* loaded from: classes.dex */
public final class AdManagerAdViewOptions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AdManagerAdViewOptions> CREATOR = new zzb();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2961c;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2962a = false;

        @NonNull
        public AdManagerAdViewOptions build() {
            return new AdManagerAdViewOptions(this);
        }

        @NonNull
        public Builder setManualImpressionsEnabled(boolean z) {
            this.f2962a = z;
            return this;
        }
    }

    public /* synthetic */ AdManagerAdViewOptions(Builder builder) {
        this.f2961c = builder.f2962a;
    }

    public boolean getManualImpressionsEnabled() {
        return this.f2961c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, getManualImpressionsEnabled());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public AdManagerAdViewOptions(boolean z) {
        this.f2961c = z;
    }
}
