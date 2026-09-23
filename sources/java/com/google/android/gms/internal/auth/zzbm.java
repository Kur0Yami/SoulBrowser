package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzbm extends zzbd {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f9492c;

    public zzbm(TaskCompletionSource taskCompletionSource) {
        this.f9492c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth.zzbd, com.google.android.gms.internal.auth.zzbg
    public final void K(ProxyResponse proxyResponse) {
        TaskUtil.setResultOrApiException(new Status(proxyResponse.f3375c), proxyResponse, (TaskCompletionSource<ProxyResponse>) this.f9492c);
    }
}
