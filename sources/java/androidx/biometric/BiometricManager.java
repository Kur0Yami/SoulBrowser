package androidx.biometric;

import android.app.KeyguardManager;
import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.biometric.KeyguardUtils;
import androidx.biometric.PackageUtils;
import androidx.core.hardware.fingerprint.FingerprintManagerCompat;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public class BiometricManager {

    /* renamed from: a, reason: collision with root package name */
    public final DefaultInjector f387a;
    public final android.hardware.biometrics.BiometricManager b;

    /* renamed from: c, reason: collision with root package name */
    public final FingerprintManagerCompat f388c;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static int a(@NonNull android.hardware.biometrics.BiometricManager biometricManager) {
            return biometricManager.canAuthenticate();
        }

        @Nullable
        public static android.hardware.biometrics.BiometricManager b(@NonNull Context context) {
            return (android.hardware.biometrics.BiometricManager) context.getSystemService(android.hardware.biometrics.BiometricManager.class);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static int a(@NonNull android.hardware.biometrics.BiometricManager biometricManager, int i) {
            return biometricManager.canAuthenticate(i);
        }
    }

    /* loaded from: classes.dex */
    public interface Authenticators {
    }

    /* loaded from: classes.dex */
    public static class DefaultInjector implements Injector {

        /* renamed from: a, reason: collision with root package name */
        public final Context f389a;

        public DefaultInjector(Context context) {
            this.f389a = context.getApplicationContext();
        }

        public final boolean a() {
            KeyguardManager a2 = KeyguardUtils.Api23Impl.a(this.f389a);
            if (a2 == null) {
                return false;
            }
            return KeyguardUtils.Api23Impl.b(a2);
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface Injector {
    }

    public BiometricManager(DefaultInjector defaultInjector) {
        android.hardware.biometrics.BiometricManager biometricManager;
        Context context = defaultInjector.f389a;
        this.f387a = defaultInjector;
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            biometricManager = Api29Impl.b(context);
        } else {
            biometricManager = null;
        }
        this.b = biometricManager;
        this.f388c = i <= 29 ? new FingerprintManagerCompat(context) : null;
    }

    public static BiometricManager c(Context context) {
        return new BiometricManager(new DefaultInjector(context));
    }

    public final int a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            android.hardware.biometrics.BiometricManager biometricManager = this.b;
            if (biometricManager == null) {
                Log.e("BiometricManager", "Failure in canAuthenticate(). BiometricManager was null.");
                return 1;
            }
            return Api30Impl.a(biometricManager, KotlinVersion.MAX_COMPONENT_VALUE);
        }
        DefaultInjector defaultInjector = this.f387a;
        Context context = defaultInjector.f389a;
        if (!AuthenticatorUtils.b(KotlinVersion.MAX_COMPONENT_VALUE)) {
            return -2;
        }
        if (KeyguardUtils.Api23Impl.a(context) == null) {
            return 12;
        }
        if (AuthenticatorUtils.a(KotlinVersion.MAX_COMPONENT_VALUE)) {
            if (defaultInjector.a()) {
                return 0;
            }
            return 11;
        }
        if (i == 29) {
            android.hardware.biometrics.BiometricManager biometricManager2 = this.b;
            if (biometricManager2 == null) {
                Log.e("BiometricManager", "Failure in canAuthenticate(). BiometricManager was null.");
                return 1;
            }
            return Api29Impl.a(biometricManager2);
        }
        if (i == 28) {
            if (context == null || context.getPackageManager() == null || !PackageUtils.Api23Impl.a(context.getPackageManager())) {
                return 12;
            }
            if (!defaultInjector.a()) {
                return b();
            }
            if (b() == 0) {
                return 0;
            }
            return -1;
        }
        return b();
    }

    public final int b() {
        FingerprintManagerCompat fingerprintManagerCompat = this.f388c;
        if (fingerprintManagerCompat == null) {
            Log.e("BiometricManager", "Failure in canAuthenticate(). FingerprintManager was null.");
            return 1;
        }
        Context context = fingerprintManagerCompat.f696a;
        FingerprintManager b = FingerprintManagerCompat.b(context);
        if (b != null && b.isHardwareDetected()) {
            FingerprintManager b2 = FingerprintManagerCompat.b(context);
            if (b2 != null && b2.hasEnrolledFingerprints()) {
                return 0;
            }
            return 11;
        }
        return 12;
    }
}
