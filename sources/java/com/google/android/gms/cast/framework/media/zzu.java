package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaStatus;
import j$.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzu extends zzbc {
    public final /* synthetic */ RemoteMediaClient d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzu(RemoteMediaClient remoteMediaClient) {
        super(remoteMediaClient, false);
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
            jSONObject.put("type", "GET_STATUS");
            MediaStatus mediaStatus = zzarVar.f;
            if (mediaStatus != null) {
                jSONObject.put("mediaSessionId", mediaStatus.f);
            }
        } catch (JSONException unused) {
        }
        zzarVar.a(b2, jSONObject.toString());
        zzarVar.q.a(b2, b);
    }
}
