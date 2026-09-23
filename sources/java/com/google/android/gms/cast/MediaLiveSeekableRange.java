package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "MediaLiveSeekableRangeCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class MediaLiveSeekableRange extends AbstractSafeParcelable {

    /* renamed from: c, reason: collision with root package name */
    public final long f3441c;
    public final long f;
    public final boolean g;
    public final boolean h;
    public static final Logger i = new Logger("MediaLiveSeekableRange", null);

    @NonNull
    public static final Parcelable.Creator<MediaLiveSeekableRange> CREATOR = new Object();

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public MediaLiveSeekableRange(long j, long j2, boolean z, boolean z2) {
        this.f3441c = Math.max(j, 0L);
        this.f = Math.max(j2, 0L);
        this.g = z;
        this.h = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaLiveSeekableRange)) {
            return false;
        }
        MediaLiveSeekableRange mediaLiveSeekableRange = (MediaLiveSeekableRange) obj;
        if (this.f3441c == mediaLiveSeekableRange.f3441c && this.f == mediaLiveSeekableRange.f && this.g == mediaLiveSeekableRange.g && this.h == mediaLiveSeekableRange.h) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f3441c), Long.valueOf(this.f), Boolean.valueOf(this.g), Boolean.valueOf(this.h));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, this.f3441c);
        SafeParcelWriter.writeLong(parcel, 3, this.f);
        SafeParcelWriter.writeBoolean(parcel, 4, this.g);
        SafeParcelWriter.writeBoolean(parcel, 5, this.h);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
