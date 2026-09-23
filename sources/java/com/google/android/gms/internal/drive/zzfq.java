package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.CompletionEvent;

/* loaded from: classes.dex */
public final class zzfq implements Parcelable.Creator<zzfp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfp createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = 0;
        ChangeEvent changeEvent = null;
        CompletionEvent completionEvent = null;
        com.google.android.gms.drive.events.zzo zzoVar = null;
        com.google.android.gms.drive.events.zzb zzbVar = null;
        com.google.android.gms.drive.events.zzv zzvVar = null;
        com.google.android.gms.drive.events.zzr zzrVar = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 2) {
                if (fieldId != 3) {
                    if (fieldId != 5) {
                        if (fieldId != 6) {
                            if (fieldId != 7) {
                                if (fieldId != 9) {
                                    if (fieldId != 10) {
                                        SafeParcelReader.skipUnknownField(parcel, readHeader);
                                    } else {
                                        zzrVar = (com.google.android.gms.drive.events.zzr) SafeParcelReader.createParcelable(parcel, readHeader, com.google.android.gms.drive.events.zzr.CREATOR);
                                    }
                                } else {
                                    zzvVar = (com.google.android.gms.drive.events.zzv) SafeParcelReader.createParcelable(parcel, readHeader, com.google.android.gms.drive.events.zzv.CREATOR);
                                }
                            } else {
                                zzbVar = (com.google.android.gms.drive.events.zzb) SafeParcelReader.createParcelable(parcel, readHeader, com.google.android.gms.drive.events.zzb.CREATOR);
                            }
                        } else {
                            zzoVar = (com.google.android.gms.drive.events.zzo) SafeParcelReader.createParcelable(parcel, readHeader, com.google.android.gms.drive.events.zzo.CREATOR);
                        }
                    } else {
                        completionEvent = (CompletionEvent) SafeParcelReader.createParcelable(parcel, readHeader, CompletionEvent.CREATOR);
                    }
                } else {
                    changeEvent = (ChangeEvent) SafeParcelReader.createParcelable(parcel, readHeader, ChangeEvent.CREATOR);
                }
            } else {
                i = SafeParcelReader.readInt(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzfp(i, changeEvent, completionEvent, zzoVar, zzbVar, zzvVar, zzrVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfp[] newArray(int i) {
        return new zzfp[i];
    }
}
