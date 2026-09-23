package com.google.android.gms.location;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes3.dex */
final class zzbt implements BaseImplementation.ResultHolder<LocationSettingsResult> {

    /* renamed from: a, reason: collision with root package name */
    public final TaskCompletionSource f11587a;

    public zzbt(TaskCompletionSource taskCompletionSource) {
        this.f11587a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setFailedResult(Status status) {
        this.f11587a.a(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    public final void setResult(Object obj) {
        LocationSettingsResult locationSettingsResult = (LocationSettingsResult) obj;
        Status status = locationSettingsResult.f11573c;
        boolean isSuccess = status.isSuccess();
        TaskCompletionSource taskCompletionSource = this.f11587a;
        if (isSuccess) {
            taskCompletionSource.b(new Response(locationSettingsResult));
        } else if (status.hasResolution()) {
            taskCompletionSource.a(new ResolvableApiException(status));
        } else {
            taskCompletionSource.a(new ApiException(status));
        }
    }
}
