package com.android.billingclient.api;

import android.content.Context;

/* loaded from: classes.dex */
final class zzaa {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2022a;
    public final PurchasesUpdatedListener b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcy f2023c;
    public final zzz d = new zzz(this, true);
    public final zzz e = new zzz(this, false);
    public boolean f;

    public zzaa(Context context, PurchasesUpdatedListener purchasesUpdatedListener, zzdh zzdhVar) {
        this.f2022a = context;
        this.b = purchasesUpdatedListener;
        this.f2023c = zzdhVar;
    }
}
