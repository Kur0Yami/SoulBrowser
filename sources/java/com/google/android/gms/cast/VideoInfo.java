package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "VideoInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class VideoInfo extends AbstractSafeParcelable {

    /* renamed from: c, reason: collision with root package name */
    public final int f3462c;
    public final int f;
    public final int g;
    public static final Logger h = new Logger("VideoInfo", null);

    @NonNull
    public static final Parcelable.Creator<VideoInfo> CREATOR = new Object();

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public VideoInfo(int i, int i2, int i3) {
        this.f3462c = i;
        this.f = i2;
        this.g = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoInfo)) {
            return false;
        }
        VideoInfo videoInfo = (VideoInfo) obj;
        if (this.f == videoInfo.f && this.f3462c == videoInfo.f3462c && this.g == videoInfo.g) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f), Integer.valueOf(this.f3462c), Integer.valueOf(this.g));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f3462c);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
