package androidx.credentials.playservices;

import android.content.Context;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.credentials.ClearCredentialStateRequest;
import androidx.credentials.CreateCredentialRequest;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePasswordRequest;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.CreateRestoreCredentialRequest;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialProvider;
import androidx.credentials.GetCredentialRequest;
import androidx.credentials.GetCredentialResponse;
import androidx.credentials.PrepareGetCredentialResponse;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.ClearCredentialUnknownException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.GetCredentialException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.auth.api.identity.zbx;
import com.google.android.gms.auth.blockstore.restorecredential.ClearRestoreCredentialRequest;
import com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.auth_blockstore.zzab;
import com.google.android.gms.internal.p000authapi.zbat;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 &2\u00020\u0001:\u0001&B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\r\u001a\u00020\u000eH\u0016J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J8\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0014\u0010\u001a\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0012\u0004\u0012\u00020\u001d0\u001bH\u0016J>\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u001f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!0\u001bH\u0016J>\u0010\"\u001a\u00020\u00132\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020#2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%0\u001bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006'"}, d2 = {"Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;", "Landroidx/credentials/CredentialProvider;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "googleApiAvailability", "Lcom/google/android/gms/common/GoogleApiAvailability;", "getGoogleApiAvailability$annotations", "()V", "getGoogleApiAvailability", "()Lcom/google/android/gms/common/GoogleApiAvailability;", "setGoogleApiAvailability", "(Lcom/google/android/gms/common/GoogleApiAvailability;)V", "isAvailableOnDevice", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "minApkVersion", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "isGooglePlayServicesAvailable", "onClearCredential", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "request", "Landroidx/credentials/ClearCredentialStateRequest;", "cancellationSignal", "Landroid/os/CancellationSignal;", "executor", "Ljava/util/concurrent/Executor;", "callback", "Landroidx/credentials/CredentialManagerCallback;", "Ljava/lang/Void;", "Landroidx/credentials/exceptions/ClearCredentialException;", "onCreateCredential", "Landroidx/credentials/CreateCredentialRequest;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "onGetCredential", "Landroidx/credentials/GetCredentialRequest;", "Landroidx/credentials/GetCredentialResponse;", "Landroidx/credentials/exceptions/GetCredentialException;", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@RestrictTo
/* loaded from: classes.dex */
public final class CredentialProviderPlayServicesImpl implements CredentialProvider {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Object();

    @RestrictTo
    public static final int MIN_GMS_APK_VERSION = 230815045;

    @RestrictTo
    public static final int MIN_GMS_APK_VERSION_DIGITAL_CRED = 243100000;

    @RestrictTo
    public static final int MIN_GMS_APK_VERSION_RESTORE_CRED = 242200000;

    @NotNull
    private static final String TAG = "PlayServicesImpl";

    @NotNull
    private final Context context;

    @NotNull
    private GoogleApiAvailability googleApiAvailability;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "MIN_GMS_APK_VERSION", "I", "MIN_GMS_APK_VERSION_DIGITAL_CRED", "MIN_GMS_APK_VERSION_RESTORE_CRED", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static boolean a(CancellationSignal cancellationSignal) {
            if (cancellationSignal != null) {
                if (cancellationSignal.isCanceled()) {
                    Log.i(CredentialProviderPlayServicesImpl.TAG, "the flow has been canceled");
                    return true;
                }
                return false;
            }
            Log.i(CredentialProviderPlayServicesImpl.TAG, "No cancellationSignal found");
            return false;
        }

        public static void b(CancellationSignal cancellationSignal, Function0 callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (!a(cancellationSignal)) {
                callback.invoke();
            }
        }
    }

    public CredentialProviderPlayServicesImpl(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        Intrinsics.checkNotNullExpressionValue(googleApiAvailability, "getInstance(...)");
        this.googleApiAvailability = googleApiAvailability;
    }

    @VisibleForTesting
    public static /* synthetic */ void getGoogleApiAvailability$annotations() {
    }

    private final int isGooglePlayServicesAvailable(Context context, int minApkVersion) {
        return this.googleApiAvailability.isGooglePlayServicesAvailable(context, minApkVersion);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, androidx.credentials.exceptions.ClearCredentialUnknownException] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, androidx.credentials.exceptions.ClearCredentialUnknownException] */
    public static final void onClearCredential$lambda$1(CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        Log.w(TAG, "Clearing restore credential failed", e);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new ClearCredentialUnknownException("Clear restore credential failed for unknown reason.");
        if ((e instanceof ApiException) && ((ApiException) e).getStatusCode() == 40201) {
            objectRef.element = new ClearCredentialUnknownException("The restore credential internal service had a failure.");
        }
        Companion companion = INSTANCE;
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$3$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Unit invoke() {
                executor.execute(new a.a(2, credentialManagerCallback, objectRef));
                return Unit.INSTANCE;
            }
        };
        companion.getClass();
        Companion.b(cancellationSignal, function0);
    }

    public static final void onClearCredential$lambda$4(CredentialProviderPlayServicesImpl credentialProviderPlayServicesImpl, CancellationSignal cancellationSignal, final Executor executor, final CredentialManagerCallback credentialManagerCallback, final Exception e) {
        Intrinsics.checkNotNullParameter(e, "e");
        Companion companion = INSTANCE;
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$5$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Unit invoke() {
                StringBuilder sb = new StringBuilder("During clear credential sign out failed with ");
                Exception exc = e;
                sb.append(exc);
                Log.w("PlayServicesImpl", sb.toString());
                executor.execute(new a.a(3, credentialManagerCallback, exc));
                return Unit.INSTANCE;
            }
        };
        companion.getClass();
        Companion.b(cancellationSignal, function0);
    }

    @NotNull
    public final GoogleApiAvailability getGoogleApiAvailability() {
        return this.googleApiAvailability;
    }

    @Override // androidx.credentials.CredentialProvider
    public boolean isAvailableOnDevice() {
        return isAvailableOnDevice(MIN_GMS_APK_VERSION);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.common.api.internal.RemoteCall, java.lang.Object, com.google.android.gms.auth.blockstore.restorecredential.internal.InternalRestoreCredentialClient$$ExternalSyntheticLambda0] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, com.google.android.gms.auth.api.identity.zbx] */
    @Override // androidx.credentials.CredentialProvider
    public void onClearCredential(@NotNull ClearCredentialStateRequest request, @Nullable final CancellationSignal cancellationSignal, @NotNull final Executor executor, @NotNull final CredentialManagerCallback<Void, ClearCredentialException> callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        INSTANCE.getClass();
        if (Companion.a(cancellationSignal)) {
            return;
        }
        request.getClass();
        if (Intrinsics.areEqual("androidx.credentials.TYPE_CLEAR_CREDENTIAL_STATE", "androidx.credentials.TYPE_CLEAR_RESTORE_CREDENTIAL")) {
            if (!isAvailableOnDevice(MIN_GMS_APK_VERSION_RESTORE_CRED)) {
                Companion.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Unit invoke() {
                        executor.execute(new d(callback, 0));
                        return Unit.INSTANCE;
                    }
                });
                return;
            }
            Context context = this.context;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(context, "context");
            GoogleApi googleApi = new GoogleApi(context, (Api<Api.ApiOptions.NoOptions>) InternalRestoreCredentialClient.f3411a, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
            ClearRestoreCredentialRequest request2 = new ClearRestoreCredentialRequest(request.f863a);
            Intrinsics.checkNotNullParameter(request2, "request");
            TaskApiCall.Builder features = TaskApiCall.builder().setFeatures(zzab.f9588a);
            ?? obj = new Object();
            obj.f3412a = request2;
            Task doRead = googleApi.doRead(features.run(obj).setMethodKey(1694).build());
            Intrinsics.checkNotNullExpressionValue(doRead, "doRead(...)");
            doRead.g(new a(0, new Function1<Boolean, Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Boolean bool) {
                    CredentialProviderPlayServicesImpl.Companion companion = CredentialProviderPlayServicesImpl.INSTANCE;
                    final Executor executor2 = executor;
                    final CredentialManagerCallback credentialManagerCallback = callback;
                    Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$2.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Unit invoke() {
                            Log.i("PlayServicesImpl", "Cleared restore credential successfully!");
                            executor2.execute(new d(credentialManagerCallback, 1));
                            return Unit.INSTANCE;
                        }
                    };
                    companion.getClass();
                    CredentialProviderPlayServicesImpl.Companion.b(cancellationSignal, function0);
                    return Unit.INSTANCE;
                }
            })).e(new b(cancellationSignal, executor, callback));
            return;
        }
        new zbat((Context) Preconditions.checkNotNull(this.context), (zbx) new Object()).i().g(new a(1, new Function1<Void, Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Unit invoke(Void r4) {
                CredentialProviderPlayServicesImpl.Companion companion = CredentialProviderPlayServicesImpl.INSTANCE;
                final Executor executor2 = executor;
                final CredentialManagerCallback credentialManagerCallback = callback;
                Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onClearCredential$4.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Unit invoke() {
                        Log.i("PlayServicesImpl", "During clear credential, signed out successfully!");
                        executor2.execute(new d(credentialManagerCallback, 2));
                        return Unit.INSTANCE;
                    }
                };
                companion.getClass();
                CredentialProviderPlayServicesImpl.Companion.b(cancellationSignal, function0);
                return Unit.INSTANCE;
            }
        })).e(new OnFailureListener() { // from class: androidx.credentials.playservices.c
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void c(Exception exc) {
                CredentialProviderPlayServicesImpl.onClearCredential$lambda$4(CredentialProviderPlayServicesImpl.this, cancellationSignal, executor, callback, exc);
            }
        });
    }

    public void onCreateCredential(@NotNull Context context, @NotNull CreateCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull final Executor executor, @NotNull final CredentialManagerCallback<CreateCredentialResponse, CreateCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        INSTANCE.getClass();
        if (!Companion.a(cancellationSignal)) {
            if (request instanceof CreatePasswordRequest) {
                int i = CredentialProviderCreatePasswordController.j;
                Intrinsics.checkNotNullParameter(context, "context");
                new CredentialProviderCreatePasswordController(context).e((CreatePasswordRequest) request, callback, executor, cancellationSignal);
                return;
            }
            if (request instanceof CreatePublicKeyCredentialRequest) {
                int i2 = CredentialProviderCreatePublicKeyCredentialController.j;
                Intrinsics.checkNotNullParameter(context, "context");
                new CredentialProviderCreatePublicKeyCredentialController(context).g((CreatePublicKeyCredentialRequest) request, callback, executor, cancellationSignal);
                return;
            }
            if (request instanceof CreateRestoreCredentialRequest) {
                if (!isAvailableOnDevice(MIN_GMS_APK_VERSION_RESTORE_CRED)) {
                    Companion.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.CredentialProviderPlayServicesImpl$onCreateCredential$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Unit invoke() {
                            executor.execute(new d(callback, 3));
                            return Unit.INSTANCE;
                        }
                    });
                    return;
                }
                Intrinsics.checkNotNullParameter(context, "context");
                new CredentialProviderController(context);
                CreateRestoreCredentialRequest request2 = (CreateRestoreCredentialRequest) request;
                Intrinsics.checkNotNullParameter(request2, "request");
                Intrinsics.checkNotNullParameter(callback, "callback");
                Intrinsics.checkNotNullParameter(executor, "executor");
                if (Companion.a(cancellationSignal)) {
                    return;
                }
                Intrinsics.checkNotNullParameter(request2, "request");
                new com.google.android.gms.auth.blockstore.restorecredential.CreateRestoreCredentialRequest(null);
                throw null;
            }
            throw new UnsupportedOperationException("Create Credential request is unsupported, not password or publickeycredential");
        }
    }

    @RequiresApi
    public void onGetCredential(@NotNull Context context, @NotNull PrepareGetCredentialResponse.PendingGetCredentialHandle pendingGetCredentialHandle, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(pendingGetCredentialHandle, "pendingGetCredentialHandle");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    @RequiresApi
    public void onPrepareCredential(@NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    public final void setGoogleApiAvailability(@NotNull GoogleApiAvailability googleApiAvailability) {
        Intrinsics.checkNotNullParameter(googleApiAvailability, "<set-?>");
        this.googleApiAvailability = googleApiAvailability;
    }

    public final boolean isAvailableOnDevice(int minApkVersion) {
        int isGooglePlayServicesAvailable = isGooglePlayServicesAvailable(this.context, minApkVersion);
        boolean z = isGooglePlayServicesAvailable == 0;
        if (!z) {
            Log.w(TAG, "Connection with Google Play Services was not successful. Connection result is: " + new ConnectionResult(isGooglePlayServicesAvailable));
        }
        return z;
    }

    public void onGetCredential(@NotNull Context context, @NotNull GetCredentialRequest request, @Nullable CancellationSignal cancellationSignal, @NotNull Executor executor, @NotNull CredentialManagerCallback<GetCredentialResponse, GetCredentialException> callback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        INSTANCE.getClass();
        if (Companion.a(cancellationSignal)) {
            return;
        }
        Intrinsics.checkNotNullParameter(request, "request");
        request.getClass();
        throw null;
    }
}
