package com.google.android.gms.cast.framework.media;

import android.support.v4.media.a;
import android.util.Log;
import com.google.android.gms.cast.internal.Logger;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzt extends zzbc {
    public final /* synthetic */ RemoteMediaClient d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzt(RemoteMediaClient remoteMediaClient) {
        super(remoteMediaClient, false);
        this.d = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void a() {
        com.google.android.gms.cast.internal.zzar zzarVar = this.d.f3506c;
        com.google.android.gms.cast.internal.zzat b = b();
        zzarVar.getClass();
        JSONObject jSONObject = new JSONObject();
        long b2 = zzarVar.b();
        try {
            jSONObject.put("requestId", b2);
            jSONObject.put("type", "SKIP_AD");
            jSONObject.put("mediaSessionId", zzarVar.e());
        } catch (JSONException e) {
            Logger logger = zzarVar.f3627a;
            Locale locale = Locale.ROOT;
            Log.w(logger.f3604a, logger.d(a.C("Error creating SkipAd message: ", e.getMessage()), new Object[0]));
        }
        zzarVar.a(b2, jSONObject.toString());
        zzarVar.w.a(b2, b);
    }
}
