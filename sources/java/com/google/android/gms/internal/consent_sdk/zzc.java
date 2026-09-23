package com.google.android.gms.internal.consent_sdk;

import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final /* synthetic */ class zzc implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f9964c;
    public final /* synthetic */ String f;
    public final /* synthetic */ zzd[] g;

    public /* synthetic */ zzc(String str, String str2, zzd[] zzdVarArr) {
        this.f9964c = str;
        this.f = str2;
        this.g = zzdVarArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final JSONObject jSONObject;
        String str = this.f9964c;
        if (TextUtils.isEmpty(str)) {
            Log.d("UserMessagingPlatform", "Error on action: empty action name");
            return;
        }
        final String lowerCase = str.toLowerCase();
        String str2 = this.f;
        if (TextUtils.isEmpty(str2)) {
            jSONObject = new JSONObject();
        } else {
            try {
                jSONObject = new JSONObject(str2);
            } catch (JSONException unused) {
                Log.d("UserMessagingPlatform", "Action[" + lowerCase + "]: failed to parse args: " + str2);
                return;
            }
        }
        Log.d("UserMessagingPlatform", "Action[" + lowerCase + "]: " + jSONObject.toString());
        int i = 0;
        while (true) {
            zzd[] zzdVarArr = this.g;
            if (i < zzdVarArr.length) {
                final zzd zzdVar = zzdVarArr[i];
                FutureTask futureTask = new FutureTask(new Callable() { // from class: com.google.android.gms.internal.consent_sdk.zzb
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        String str3 = lowerCase;
                        return Boolean.valueOf(zzd.this.f(jSONObject, str3));
                    }
                });
                zzdVar.zza().execute(futureTask);
                try {
                } catch (InterruptedException e) {
                    Log.d("UserMessagingPlatform", "Thread interrupted for Action[" + lowerCase + "]: ", e);
                } catch (ExecutionException e2) {
                    Log.d("UserMessagingPlatform", a.l("Failed to run Action[", lowerCase, "]: "), e2.getCause());
                }
                if (!((Boolean) futureTask.get()).booleanValue()) {
                    i++;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
