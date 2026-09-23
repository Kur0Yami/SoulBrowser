package com.google.android.gms.common.moduleinstall.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;

/* loaded from: classes.dex */
public abstract class zad extends com.google.android.gms.internal.base.zab implements zae {
    public zad() {
        super("com.google.android.gms.common.moduleinstall.internal.IModuleInstallCallbacks");
    }

    @Override // com.google.android.gms.internal.base.zab
    public final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    Status status = (Status) com.google.android.gms.internal.base.zac.a(parcel, Status.CREATOR);
                    com.google.android.gms.internal.base.zac.d(parcel);
                    zae(status);
                } else {
                    Status status2 = (Status) com.google.android.gms.internal.base.zac.a(parcel, Status.CREATOR);
                    ModuleInstallIntentResponse moduleInstallIntentResponse = (ModuleInstallIntentResponse) com.google.android.gms.internal.base.zac.a(parcel, ModuleInstallIntentResponse.CREATOR);
                    com.google.android.gms.internal.base.zac.d(parcel);
                    zad(status2, moduleInstallIntentResponse);
                }
            } else {
                Status status3 = (Status) com.google.android.gms.internal.base.zac.a(parcel, Status.CREATOR);
                ModuleInstallResponse moduleInstallResponse = (ModuleInstallResponse) com.google.android.gms.internal.base.zac.a(parcel, ModuleInstallResponse.CREATOR);
                com.google.android.gms.internal.base.zac.d(parcel);
                zac(status3, moduleInstallResponse);
            }
        } else {
            Status status4 = (Status) com.google.android.gms.internal.base.zac.a(parcel, Status.CREATOR);
            ModuleAvailabilityResponse moduleAvailabilityResponse = (ModuleAvailabilityResponse) com.google.android.gms.internal.base.zac.a(parcel, ModuleAvailabilityResponse.CREATOR);
            com.google.android.gms.internal.base.zac.d(parcel);
            zab(status4, moduleAvailabilityResponse);
        }
        return true;
    }
}
