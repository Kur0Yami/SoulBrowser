package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbza;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbj {

    /* renamed from: a, reason: collision with root package name */
    public final long f3259a;
    public final long b;
    public final String zza;
    public String zzb;

    @Nullable
    public zzbza zzd;

    @Nullable
    public Bundle zze;

    @Nullable
    public String zzc = null;
    public Bundle zzf = new Bundle();

    public zzbj(JsonReader jsonReader, @Nullable zzbza zzbzaVar) {
        Bundle bundle;
        this.f3259a = -1L;
        this.b = -1L;
        this.zzd = zzbzaVar;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : nextName;
            switch (nextName.hashCode()) {
                case -1573145462:
                    if (nextName.equals("start_time")) {
                        this.f3259a = jsonReader.nextLong();
                        break;
                    } else {
                        break;
                    }
                case -995427962:
                    if (nextName.equals("params")) {
                        str = jsonReader.nextString();
                        break;
                    } else {
                        break;
                    }
                case -271442291:
                    if (nextName.equals("signal_dictionary")) {
                        hashMap = new HashMap();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                        }
                        jsonReader.endObject();
                        break;
                    } else {
                        break;
                    }
                case 1725551537:
                    if (nextName.equals("end_time")) {
                        this.b = jsonReader.nextLong();
                        break;
                    } else {
                        break;
                    }
            }
            jsonReader.skipValue();
        }
        this.zza = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzf.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && zzbzaVar != null && (bundle = zzbzaVar.q) != null) {
            bundle.putLong("get-signals-sdkcore-start", this.f3259a);
            bundle.putLong("get-signals-sdkcore-end", this.b);
        }
    }
}
