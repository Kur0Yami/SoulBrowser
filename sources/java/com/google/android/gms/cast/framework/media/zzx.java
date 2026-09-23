package com.google.android.gms.cast.framework.media;

import androidx.work.impl.workers.a;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.media.MediaCommon;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzx extends zzbc {
    public final /* synthetic */ MediaQueueItem[] d;
    public final /* synthetic */ int e;
    public final /* synthetic */ int f;
    public final /* synthetic */ long g;
    public final /* synthetic */ RemoteMediaClient h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzx(RemoteMediaClient remoteMediaClient, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j) {
        super(remoteMediaClient, false);
        this.d = mediaQueueItemArr;
        this.e = i;
        this.f = i2;
        this.g = j;
        this.h = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.framework.media.zzbc
    public final void a() {
        int length;
        String b;
        com.google.android.gms.cast.internal.zzar zzarVar = this.h.f3506c;
        com.google.android.gms.cast.internal.zzat b2 = b();
        int i = this.f;
        zzarVar.getClass();
        MediaQueueItem[] mediaQueueItemArr = this.d;
        if (mediaQueueItemArr != null && (length = mediaQueueItemArr.length) != 0) {
            int i2 = this.e;
            if (i2 >= 0 && i2 < length) {
                long j = this.g;
                if (j != -1 && j < 0) {
                    StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 34);
                    sb.append("playPosition can not be negative: ");
                    sb.append(j);
                    throw new IllegalArgumentException(sb.toString());
                }
                JSONObject jSONObject = new JSONObject();
                long b3 = zzarVar.b();
                zzarVar.j.a(b3, b2);
                try {
                    jSONObject.put("requestId", b3);
                    jSONObject.put("type", "QUEUE_LOAD");
                    JSONArray jSONArray = new JSONArray();
                    for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                        jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
                    }
                    jSONObject.put("items", jSONArray);
                    b = MediaCommon.b(Integer.valueOf(i));
                } catch (JSONException unused) {
                }
                if (b != null) {
                    jSONObject.put("repeatMode", b);
                    jSONObject.put("startIndex", i2);
                    if (j != -1) {
                        Pattern pattern = CastUtils.f3603a;
                        jSONObject.put("currentTime", j / 1000.0d);
                    }
                    int i4 = zzarVar.i;
                    if (i4 != -1) {
                        jSONObject.put("sequenceNumber", i4);
                    }
                    zzarVar.a(b3, jSONObject.toString());
                    return;
                }
                StringBuilder sb2 = new StringBuilder(String.valueOf(i).length() + 21);
                sb2.append("Invalid repeat mode: ");
                sb2.append(i);
                throw new IllegalArgumentException(sb2.toString());
            }
            throw new IllegalArgumentException(a.r(i2, "Invalid startIndex: ", new StringBuilder(String.valueOf(i2).length() + 20)));
        }
        throw new IllegalArgumentException("items must not be null or empty.");
    }
}
