package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzcti implements zzdby {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f5453c;
    public final /* synthetic */ VersionInfoParcel f;
    public final /* synthetic */ zzfhr g;
    public final /* synthetic */ zzfik h;

    public /* synthetic */ zzcti(Context context, VersionInfoParcel versionInfoParcel, zzfhr zzfhrVar, zzfik zzfikVar) {
        this.f5453c = context;
        this.f = versionInfoParcel;
        this.g = zzfhrVar;
        this.h = zzfikVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final /* synthetic */ void zzg() {
        JSONObject jSONObject = this.g.C;
        com.google.android.gms.ads.internal.zzt.zzo().zzg(this.f5453c, this.f.afmaVersion, jSONObject.toString(), this.h.g);
    }
}
