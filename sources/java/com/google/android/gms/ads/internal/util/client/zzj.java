package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;
import com.google.android.gms.common.util.Base64Utils;
import java.util.Map;

/* loaded from: classes.dex */
final /* synthetic */ class zzj implements zzk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f3079a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map f3080c;
    public final /* synthetic */ byte[] d;

    public /* synthetic */ zzj(String str, String str2, Map map, byte[] bArr) {
        this.f3079a = str;
        this.b = str2;
        this.f3080c = map;
        this.d = bArr;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzk
    public final /* synthetic */ void a(JsonWriter jsonWriter) {
        Object obj = zzl.b;
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(this.f3079a);
        jsonWriter.name("verb").value(this.b);
        jsonWriter.endObject();
        zzl.a(jsonWriter, this.f3080c);
        byte[] bArr = this.d;
        if (bArr != null) {
            jsonWriter.name("body").value(Base64Utils.encode(bArr));
        }
        jsonWriter.endObject();
    }
}
