package com.google.android.gms.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzv;
import com.google.android.gms.ads.internal.util.client.zzo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ResponseInfo {

    /* renamed from: a, reason: collision with root package name */
    public final zzea f2948a;
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final AdapterResponseInfo f2949c;

    public ResponseInfo(zzea zzeaVar) {
        this.f2948a = zzeaVar;
        if (zzeaVar != null) {
            try {
                List zzg = zzeaVar.zzg();
                if (zzg != null) {
                    Iterator it = zzg.iterator();
                    while (it.hasNext()) {
                        AdapterResponseInfo zza = AdapterResponseInfo.zza((zzv) it.next());
                        if (zza != null) {
                            this.b.add(zza);
                        }
                    }
                }
            } catch (RemoteException e) {
                zzo.zzg("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
        zzea zzeaVar2 = this.f2948a;
        if (zzeaVar2 != null) {
            try {
                zzv zzh = zzeaVar2.zzh();
                if (zzh != null) {
                    this.f2949c = AdapterResponseInfo.zza(zzh);
                }
            } catch (RemoteException e2) {
                zzo.zzg("Could not forward getLoadedAdapterResponse to ResponseInfo.", e2);
            }
        }
    }

    @Nullable
    public static ResponseInfo zzb(@Nullable zzea zzeaVar) {
        if (zzeaVar != null) {
            return new ResponseInfo(zzeaVar);
        }
        return null;
    }

    @NonNull
    public static ResponseInfo zzc(@Nullable zzea zzeaVar) {
        return new ResponseInfo(zzeaVar);
    }

    @NonNull
    public List<AdapterResponseInfo> getAdapterResponses() {
        return this.b;
    }

    @Nullable
    public AdapterResponseInfo getLoadedAdapterResponseInfo() {
        return this.f2949c;
    }

    @Nullable
    public String getMediationAdapterClassName() {
        try {
            zzea zzeaVar = this.f2948a;
            if (zzeaVar != null) {
                return zzeaVar.zze();
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzg("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    @NonNull
    public Bundle getResponseExtras() {
        try {
            zzea zzeaVar = this.f2948a;
            if (zzeaVar != null) {
                return zzeaVar.zzi();
            }
        } catch (RemoteException e) {
            zzo.zzg("Could not forward getResponseExtras to ResponseInfo.", e);
        }
        return new Bundle();
    }

    @Nullable
    public String getResponseId() {
        try {
            zzea zzeaVar = this.f2948a;
            if (zzeaVar != null) {
                return zzeaVar.zzf();
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzg("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    @NonNull
    public String toString() {
        try {
            return zza().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    @NonNull
    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            jSONArray.put(((AdapterResponseInfo) obj).zzb());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        AdapterResponseInfo adapterResponseInfo = this.f2949c;
        if (adapterResponseInfo != null) {
            jSONObject.put("Loaded Adapter Response", adapterResponseInfo.zzb());
        }
        Bundle responseExtras = getResponseExtras();
        if (responseExtras != null) {
            jSONObject.put("Response Extras", zzbb.zza().zzm(responseExtras));
        }
        return jSONObject;
    }

    @Nullable
    public final zzea zzd() {
        return this.f2948a;
    }
}
