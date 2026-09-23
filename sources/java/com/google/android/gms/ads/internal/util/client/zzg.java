package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;
import java.util.Map;

/* loaded from: classes.dex */
final /* synthetic */ class zzg implements zzk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3076a;
    public final /* synthetic */ Map b;

    public /* synthetic */ zzg(int i, Map map) {
        this.f3076a = i;
        this.b = map;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzk
    public final /* synthetic */ void a(JsonWriter jsonWriter) {
        Object obj = zzl.b;
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(this.f3076a);
        jsonWriter.endObject();
        zzl.a(jsonWriter, this.b);
        jsonWriter.endObject();
    }
}
