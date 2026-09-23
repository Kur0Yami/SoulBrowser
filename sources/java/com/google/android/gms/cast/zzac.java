package com.google.android.gms.cast;

/* loaded from: classes.dex */
final class zzac implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CastRemoteDisplayLocalService f3637c;

    public zzac(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.f3637c = castRemoteDisplayLocalService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.f3637c;
        castRemoteDisplayLocalService.getClass();
        StringBuilder sb = new StringBuilder(String.valueOf(true).length() + 54);
        sb.append("onCreate after delay. The local service been started: true");
        castRemoteDisplayLocalService.b(sb.toString());
    }
}
