package com.google.android.gms.cast.framework.media;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzv extends zzbc {
    public final /* synthetic */ long[] d;
    public final /* synthetic */ RemoteMediaClient e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzv(RemoteMediaClient remoteMediaClient, long[] jArr) {
        super(remoteMediaClient, false);
        this.d = jArr;
        this.e = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void a() {
        com.google.android.gms.cast.internal.zzar zzarVar = this.e.f3506c;
        com.google.android.gms.cast.internal.zzat b = b();
        long[] jArr = this.d;
        zzarVar.getClass();
        JSONObject jSONObject = new JSONObject();
        long b2 = zzarVar.b();
        try {
            jSONObject.put("requestId", b2);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", zzarVar.e());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < jArr.length; i++) {
                jSONArray.put(i, jArr[i]);
            }
            jSONObject.put("activeTrackIds", jSONArray);
        } catch (JSONException unused) {
        }
        zzarVar.a(b2, jSONObject.toString());
        zzarVar.r.a(b2, b);
    }
}
