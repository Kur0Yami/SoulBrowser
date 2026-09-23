package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import j$.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcd implements zzd {

    /* renamed from: a, reason: collision with root package name */
    public final Application f9968a;
    public final zzbz b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f9969c;
    public final Executor d;
    public final zze e;
    public final zzao f;
    public final zzbe g;
    public final zzaq h;

    public zzcd(Application application, zzbz zzbzVar, Handler handler, Executor executor, zze zzeVar, zzao zzaoVar, zzbe zzbeVar, zzaq zzaqVar) {
        this.f9968a = application;
        this.b = zzbzVar;
        this.f9969c = handler;
        this.d = executor;
        this.e = zzeVar;
        this.f = zzaoVar;
        this.g = zzbeVar;
        this.h = zzaqVar;
    }

    public final void a(String str) {
        Log.d("UserMessagingPlatform", "Receive consent action: ".concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        String queryParameter = parse.getQueryParameter("action");
        String queryParameter2 = parse.getQueryParameter("args");
        zzd[] zzdVarArr = {this, this.f};
        zze zzeVar = this.e;
        zzeVar.getClass();
        zzeVar.f10009a.execute(new zzc(queryParameter, queryParameter2, zzdVarArr));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0034, code lost:
    
        if (r7.equals("non_personalized") != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005a, code lost:
    
        r7 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
    
        if (r7.equals("CONSENT_SIGNAL_PERSONALIZED_ADS") != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0046, code lost:
    
        if (r7.equals("CONSENT_SIGNAL_SUFFICIENT") != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004f, code lost:
    
        if (r7.equals("personalized") != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0058, code lost:
    
        if (r7.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS") != false) goto L27;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00cb  */
    @Override // com.google.android.gms.internal.consent_sdk.zzd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(org.json.JSONObject r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.zzcd.f(org.json.JSONObject, java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzd
    public final Executor zza() {
        final Handler handler = this.f9969c;
        Objects.requireNonNull(handler);
        return new Executor() { // from class: com.google.android.gms.internal.consent_sdk.zzcb
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }
}
