package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzao implements zzd {

    /* renamed from: a, reason: collision with root package name */
    public final Application f9934a;
    public final zzaq b;

    /* renamed from: c, reason: collision with root package name */
    public final zzl f9935c;
    public final Executor d;

    public zzao(Application application, zzaq zzaqVar, zzl zzlVar, Executor executor) {
        this.f9934a = application;
        this.b = zzaqVar;
        this.d = executor;
        this.f9935c = zzlVar;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:76:0x0216. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x030b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0263  */
    @Override // com.google.android.gms.internal.consent_sdk.zzd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(org.json.JSONObject r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 1154
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.zzao.f(org.json.JSONObject, java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzd
    public final Executor zza() {
        return this.d;
    }
}
