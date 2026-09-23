package com.google.android.gms.common.moduleinstall.internal;

import android.os.IInterface;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.moduleinstall.ModuleAvailabilityResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallIntentResponse;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;

/* loaded from: classes.dex */
public interface zae extends IInterface {
    void zab(Status status, @Nullable ModuleAvailabilityResponse moduleAvailabilityResponse);

    void zac(Status status, @Nullable ModuleInstallResponse moduleInstallResponse);

    void zad(Status status, @Nullable ModuleInstallIntentResponse moduleInstallIntentResponse);

    void zae(Status status);
}
