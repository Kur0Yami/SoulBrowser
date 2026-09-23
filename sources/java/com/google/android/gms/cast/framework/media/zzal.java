package com.google.android.gms.cast.framework.media;

import j$.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzal extends zzbc {
    public final /* synthetic */ int[] d;
    public final /* synthetic */ RemoteMediaClient e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzal(RemoteMediaClient remoteMediaClient, int[] iArr) {
        super(remoteMediaClient, true);
        this.d = iArr;
        Objects.requireNonNull(remoteMediaClient);
        this.e = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void a() {
        com.google.android.gms.cast.internal.zzar zzarVar = this.e.f3506c;
        com.google.android.gms.cast.internal.zzat b = b();
        int[] iArr = this.d;
        zzarVar.getClass();
        JSONObject jSONObject = new JSONObject();
        long b2 = zzarVar.b();
        try {
            jSONObject.put("requestId", b2);
            jSONObject.put("type", "QUEUE_GET_ITEMS");
            jSONObject.put("mediaSessionId", zzarVar.e());
            JSONArray jSONArray = new JSONArray();
            for (int i : iArr) {
                jSONArray.put(i);
            }
            jSONObject.put("itemIds", jSONArray);
        } catch (JSONException unused) {
        }
        zzarVar.a(b2, jSONObject.toString());
        zzarVar.u.a(b2, b);
    }
}
