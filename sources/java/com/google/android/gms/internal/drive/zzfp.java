package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.DriveEvent;

@SafeParcelable.Class(creator = "OnEventResponseCreator")
@SafeParcelable.Reserved({1, 4, 8})
/* loaded from: classes.dex */
public final class zzfp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfp> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f10170c;
    public final ChangeEvent f;
    public final CompletionEvent g;
    public final com.google.android.gms.drive.events.zzo h;
    public final com.google.android.gms.drive.events.zzb i;
    public final com.google.android.gms.drive.events.zzv j;
    public final com.google.android.gms.drive.events.zzr k;

    public zzfp(int i, ChangeEvent changeEvent, CompletionEvent completionEvent, com.google.android.gms.drive.events.zzo zzoVar, com.google.android.gms.drive.events.zzb zzbVar, com.google.android.gms.drive.events.zzv zzvVar, com.google.android.gms.drive.events.zzr zzrVar) {
        this.f10170c = i;
        this.f = changeEvent;
        this.g = completionEvent;
        this.h = zzoVar;
        this.i = zzbVar;
        this.j = zzvVar;
        this.k = zzrVar;
    }

    public final DriveEvent F() {
        int i = this.f10170c;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 7) {
                            if (i == 8) {
                                return this.k;
                            }
                            StringBuilder sb = new StringBuilder(33);
                            sb.append("Unexpected event type ");
                            sb.append(i);
                            throw new IllegalStateException(sb.toString());
                        }
                        return this.j;
                    }
                    return this.i;
                }
                return this.h;
            }
            return this.g;
        }
        return this.f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f10170c);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.h, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.i, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.j, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.k, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
