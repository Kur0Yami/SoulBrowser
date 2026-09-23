package com.google.android.gms.cast.framework.media;

import j$.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzak extends zzbc {
    public final /* synthetic */ RemoteMediaClient d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzak(RemoteMediaClient remoteMediaClient) {
        super(remoteMediaClient, true);
        Objects.requireNonNull(remoteMediaClient);
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
            jSONObject.put("type", "QUEUE_GET_ITEM_IDS");
            jSONObject.put("mediaSessionId", zzarVar.e());
        } catch (JSONException unused) {
        }
        zzarVar.a(b2, jSONObject.toString());
        zzarVar.t.a(b2, b);
    }
}
