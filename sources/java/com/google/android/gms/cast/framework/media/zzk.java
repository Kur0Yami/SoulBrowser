package com.google.android.gms.cast.framework.media;

import android.util.LruCache;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzk extends LruCache {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MediaQueue f3579a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzk(MediaQueue mediaQueue) {
        super(20);
        this.f3579a = mediaQueue;
    }

    @Override // android.util.LruCache
    public final /* bridge */ /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
        Integer num = (Integer) obj;
        if (!z) {
            return;
        }
        ArrayList arrayList = this.f3579a.g;
        Preconditions.checkNotNull(arrayList);
        arrayList.add(num);
    }
}
