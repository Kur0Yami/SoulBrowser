package com.google.android.gms.drive.events;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@SafeParcelable.Class(creator = "CompletionEventCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class CompletionEvent extends AbstractSafeParcelable implements ResourceEvent {
    public static final Parcelable.Creator<CompletionEvent> CREATOR;

    /* renamed from: c, reason: collision with root package name */
    public final DriveId f3687c;
    public final String f;
    public final ParcelFileDescriptor g;
    public final ParcelFileDescriptor h;
    public final MetadataBundle i;
    public final List j;
    public final int k;
    public final IBinder l;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.drive.events.CompletionEvent>] */
    static {
        new GmsLogger("CompletionEvent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        CREATOR = new Object();
    }

    public CompletionEvent(DriveId driveId, String str, ParcelFileDescriptor parcelFileDescriptor, ParcelFileDescriptor parcelFileDescriptor2, MetadataBundle metadataBundle, ArrayList arrayList, int i, IBinder iBinder) {
        this.f3687c = driveId;
        this.f = str;
        this.g = parcelFileDescriptor;
        this.h = parcelFileDescriptor2;
        this.i = metadataBundle;
        this.j = arrayList;
        this.k = i;
        this.l = iBinder;
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public final int getType() {
        return 2;
    }

    public final String toString() {
        String sb;
        List list = this.j;
        if (list == null) {
            sb = "<null>";
        } else {
            String join = TextUtils.join("','", list);
            StringBuilder sb2 = new StringBuilder(a.e(2, join));
            sb2.append("'");
            sb2.append(join);
            sb2.append("'");
            sb = sb2.toString();
        }
        return String.format(Locale.US, "CompletionEvent [id=%s, status=%s, trackingTag=%s]", this.f3687c, Integer.valueOf(this.k), sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int i2 = i | 1;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3687c, i2, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i2, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.i, i2, false);
        SafeParcelWriter.writeStringList(parcel, 7, this.j, false);
        SafeParcelWriter.writeInt(parcel, 8, this.k);
        SafeParcelWriter.writeIBinder(parcel, 9, this.l, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
