package com.google.android.gms.cast.framework.media;

import android.util.Log;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaQueueData;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzan extends zzbc {
    public final /* synthetic */ MediaLoadRequestData d;
    public final /* synthetic */ RemoteMediaClient e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzan(RemoteMediaClient remoteMediaClient, MediaLoadRequestData mediaLoadRequestData) {
        super(remoteMediaClient, false);
        this.d = mediaLoadRequestData;
        this.e = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void a() {
        com.google.android.gms.cast.internal.zzar zzarVar = this.e.f3506c;
        com.google.android.gms.cast.internal.zzat b = b();
        zzarVar.getClass();
        MediaLoadRequestData mediaLoadRequestData = this.d;
        MediaInfo mediaInfo = mediaLoadRequestData.f3442c;
        MediaQueueData mediaQueueData = mediaLoadRequestData.f;
        if (mediaInfo == null && mediaQueueData == null) {
            throw new IllegalArgumentException("MediaInfo and MediaQueueData should not be both null");
        }
        JSONObject jSONObject = new JSONObject();
        try {
            MediaInfo mediaInfo2 = mediaLoadRequestData.f3442c;
            if (mediaInfo2 != null) {
                jSONObject.put("media", mediaInfo2.G());
            }
            if (mediaQueueData != null) {
                jSONObject.put("queueData", mediaQueueData.F());
            }
            jSONObject.putOpt("autoplay", mediaLoadRequestData.g);
            long j = mediaLoadRequestData.h;
            if (j != -1) {
                Pattern pattern = CastUtils.f3603a;
                jSONObject.put("currentTime", j / 1000.0d);
            }
            jSONObject.put("playbackRate", mediaLoadRequestData.i);
            jSONObject.putOpt("credentials", mediaLoadRequestData.m);
            jSONObject.putOpt("credentialsType", mediaLoadRequestData.n);
            jSONObject.putOpt("atvCredentials", mediaLoadRequestData.o);
            jSONObject.putOpt("atvCredentialsType", mediaLoadRequestData.p);
            long[] jArr = mediaLoadRequestData.j;
            if (jArr != null) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < jArr.length; i++) {
                    jSONArray.put(i, jArr[i]);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            jSONObject.putOpt("customData", mediaLoadRequestData.l);
            jSONObject.put("requestId", mediaLoadRequestData.q);
        } catch (JSONException e) {
            Logger logger = MediaLoadRequestData.r;
            Log.e(logger.f3604a, logger.d("Error transforming MediaLoadRequestData into JSONObject", e));
            jSONObject = new JSONObject();
        }
        long b2 = zzarVar.b();
        try {
            jSONObject.put("requestId", b2);
            jSONObject.put("type", "LOAD");
        } catch (JSONException unused) {
        }
        zzarVar.a(b2, jSONObject.toString());
        zzarVar.j.a(b2, b);
    }
}
