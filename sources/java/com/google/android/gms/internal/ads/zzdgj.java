package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdgj {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f5777a = new HashSet();
    public final HashSet b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f5778c = new HashSet();
    public final HashSet d = new HashSet();
    public final HashSet e = new HashSet();
    public final HashSet f = new HashSet();
    public final HashSet g = new HashSet();
    public final HashSet h = new HashSet();
    public final HashSet i = new HashSet();
    public final HashSet j = new HashSet();
    public final HashSet k = new HashSet();
    public final HashSet l = new HashSet();
    public final HashSet m = new HashSet();
    public final HashSet n = new HashSet();
    public zzfdr o;

    public final void a(zzdan zzdanVar, Executor executor) {
        this.i.add(new zzdij(zzdanVar, executor));
    }

    public final void b(AppEventListener appEventListener, Executor executor) {
        this.k.add(new zzdij(appEventListener, executor));
    }

    public final void c(zzdir zzdirVar, Executor executor) {
        this.d.add(new zzdij(zzdirVar, executor));
    }

    public final void d(zzddq zzddqVar, Executor executor) {
        this.b.add(new zzdij(zzddqVar, executor));
    }
}
