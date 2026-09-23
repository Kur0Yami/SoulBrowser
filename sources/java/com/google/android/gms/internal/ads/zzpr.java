package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

/* loaded from: classes.dex */
final class zzpr extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final ContentResolver f9170a;
    public final Uri b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzpu f9171c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzpr(zzpu zzpuVar, Handler handler, ContentResolver contentResolver, Uri uri) {
        super(handler);
        this.f9171c = zzpuVar;
        this.f9170a = contentResolver;
        this.b = uri;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzpu zzpuVar = this.f9171c;
        zzpuVar.a(zzpp.a(zzpuVar.f9173a, zzpuVar.i, zzpuVar.h));
    }
}
