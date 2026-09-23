package androidx.appcompat.app;

import android.content.Context;
import android.location.LocationManager;

/* loaded from: classes.dex */
class TwilightManager {
    public static TwilightManager d;

    /* renamed from: a, reason: collision with root package name */
    public final Context f118a;
    public final LocationManager b;

    /* renamed from: c, reason: collision with root package name */
    public final TwilightState f119c = new Object();

    /* loaded from: classes.dex */
    public static class TwilightState {

        /* renamed from: a, reason: collision with root package name */
        public boolean f120a;
        public long b;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.app.TwilightManager$TwilightState, java.lang.Object] */
    public TwilightManager(Context context, LocationManager locationManager) {
        this.f118a = context;
        this.b = locationManager;
    }
}
