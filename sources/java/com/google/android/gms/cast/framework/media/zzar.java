package com.google.android.gms.cast.framework.media;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzar extends zzbc {
    public final /* synthetic */ RemoteMediaClient d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzar(RemoteMediaClient remoteMediaClient) {
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
            jSONObject.put("type", "PLAY");
            jSONObject.put("mediaSessionId", zzarVar.e());
        } catch (JSONException unused) {
        }
        zzarVar.a(b2, jSONObject.toString());
        zzarVar.l.a(b2, b);
    }
}
