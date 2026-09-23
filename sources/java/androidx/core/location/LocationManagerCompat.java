package androidx.core.location;

import android.location.GnssMeasurementsEvent;
import android.location.GnssMeasurementsEvent$Callback;
import android.location.GnssStatus;
import android.location.GnssStatus$Callback;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.RequiresApi;
import androidx.collection.SimpleArrayMap;
import j$.util.Objects;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class LocationManagerCompat {

    /* loaded from: classes.dex */
    public static class Api19Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api31Impl {
    }

    /* loaded from: classes.dex */
    public static final class CancellableLocationListener implements LocationListener {
        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            synchronized (this) {
            }
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
            onLocationChanged((Location) null);
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    /* loaded from: classes.dex */
    public static class GnssListenersHolder {
        static {
            new SimpleArrayMap(0);
            new SimpleArrayMap(0);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class GnssMeasurementsTransport extends GnssMeasurementsEvent$Callback {
        public final void onGnssMeasurementsReceived(GnssMeasurementsEvent gnssMeasurementsEvent) {
        }

        public final void onStatusChanged(int i) {
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class GnssStatusTransport extends GnssStatus$Callback {
        public final void onFirstFix(int i) {
            throw null;
        }

        public final void onSatelliteStatusChanged(GnssStatus gnssStatus) {
            new GnssStatusWrapper(gnssStatus);
            throw null;
        }

        public final void onStarted() {
            throw null;
        }

        public final void onStopped() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class GpsStatusTransport implements GpsStatus.Listener {
        @Override // android.location.GpsStatus.Listener
        public final void onGpsStatusChanged(int i) {
        }
    }

    /* loaded from: classes.dex */
    public static final class InlineHandlerExecutor implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            Looper.myLooper();
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class LocationListenerKey {
        public final boolean equals(Object obj) {
            if (!(obj instanceof LocationListenerKey)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            return Objects.hash(null, null);
        }
    }

    /* loaded from: classes.dex */
    public static class LocationListenerTransport implements LocationListener {
        @Override // android.location.LocationListener
        public final void onFlushComplete(int i) {
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
        }

        @Override // android.location.LocationListener
        public final void onLocationChanged(List list) {
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class PreRGnssStatusTransport extends GnssStatus$Callback {
        public final void onFirstFix(int i) {
        }

        public final void onSatelliteStatusChanged(GnssStatus gnssStatus) {
        }

        public final void onStarted() {
        }

        public final void onStopped() {
        }
    }

    static {
        new WeakHashMap();
    }
}
