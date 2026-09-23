package androidx.credentials.playservices.controllers.CreatePassword;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePasswordRequest;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SignInPassword;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u0007¨\u0006\b"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/CreatePasswordRequest;", "Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CredentialProviderCreatePasswordController extends CredentialProviderController<CreatePasswordRequest, SavePasswordRequest, Unit, CreateCredentialResponse, CreateCredentialException> {
    public static final /* synthetic */ int j = 0;
    public final Context e;
    public CredentialManagerCallback f;
    public Executor g;
    public CancellationSignal h;
    public final CredentialProviderCreatePasswordController$resultReceiver$1 i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$resultReceiver$1] */
    public CredentialProviderCreatePasswordController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.e = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.i = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$resultReceiver$1
            /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.jvm.internal.FunctionReferenceImpl, kotlin.jvm.functions.Function2] */
            /* JADX WARN: Type inference failed for: r9v3, types: [androidx.credentials.CreateCredentialResponse, androidx.credentials.CreatePasswordResponse] */
            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i, Bundle resultData) {
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f912a;
                ?? functionReferenceImpl = new FunctionReferenceImpl(2, CredentialProviderBaseController.f912a, CredentialProviderBaseController.Companion.class, "createCredentialExceptionTypeToException", "createCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;", 0);
                final CredentialProviderCreatePasswordController credentialProviderCreatePasswordController = CredentialProviderCreatePasswordController.this;
                Executor executor = credentialProviderCreatePasswordController.g;
                CredentialManagerCallback credentialManagerCallback = null;
                if (executor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("executor");
                    executor = null;
                }
                CredentialManagerCallback credentialManagerCallback2 = credentialProviderCreatePasswordController.f;
                if (credentialManagerCallback2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                } else {
                    credentialManagerCallback = credentialManagerCallback2;
                }
                if (!CredentialProviderController.c(resultData, functionReferenceImpl, executor, credentialManagerCallback, credentialProviderCreatePasswordController.h)) {
                    int i2 = resultData.getInt("ACTIVITY_REQUEST_CODE");
                    int i3 = CredentialProviderBaseController.f913c;
                    if (i2 != i3) {
                        Log.w("CreatePassword", "Returned request code " + i3 + " which does not match what was given " + i2);
                        return;
                    }
                    if (CredentialProviderController.d(i, CredentialProviderCreatePasswordController$handleResponse$1.f891c, new Function1<CreateCredentialException, Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$handleResponse$2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Unit invoke(CreateCredentialException createCredentialException) {
                            CreateCredentialException e = createCredentialException;
                            Intrinsics.checkNotNullParameter(e, "e");
                            CredentialProviderCreatePasswordController credentialProviderCreatePasswordController2 = CredentialProviderCreatePasswordController.this;
                            Executor executor2 = credentialProviderCreatePasswordController2.g;
                            if (executor2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("executor");
                                executor2 = null;
                            }
                            executor2.execute(new a.a(4, credentialProviderCreatePasswordController2, e));
                            return Unit.INSTANCE;
                        }
                    }, credentialProviderCreatePasswordController.h)) {
                        return;
                    }
                    Unit response = Unit.INSTANCE;
                    Intrinsics.checkNotNullParameter(response, "response");
                    final ?? createCredentialResponse = new CreateCredentialResponse("android.credentials.TYPE_PASSWORD_CREDENTIAL", new Bundle());
                    CredentialProviderController.b(credentialProviderCreatePasswordController.h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$handleResponse$3
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Unit invoke() {
                            CredentialProviderCreatePasswordController credentialProviderCreatePasswordController2 = CredentialProviderCreatePasswordController.this;
                            Executor executor2 = credentialProviderCreatePasswordController2.g;
                            if (executor2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("executor");
                                executor2 = null;
                            }
                            executor2.execute(new a.a(5, credentialProviderCreatePasswordController2, createCredentialResponse));
                            return Unit.INSTANCE;
                        }
                    });
                }
            }
        };
    }

    public final void e(CreatePasswordRequest request, CredentialManagerCallback callback, Executor executor, CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.h = cancellationSignal;
        this.f = callback;
        this.g = executor;
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
            return;
        }
        Intrinsics.checkNotNullParameter(request, "request");
        request.getClass();
        SavePasswordRequest savePasswordRequest = new SavePasswordRequest(new SignInPassword(null, null), null, 0);
        Intrinsics.checkNotNullExpressionValue(savePasswordRequest, "build(...)");
        Context context = this.e;
        Intent intent = new Intent(context, (Class<?>) HiddenActivity.class);
        intent.putExtra("REQUEST_TYPE", savePasswordRequest);
        CredentialProviderBaseController.a(this.i, intent, "CREATE_PASSWORD");
        try {
            context.startActivity(intent);
        } catch (Exception unused) {
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController$invokePlayServices$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Unit invoke() {
                    CredentialProviderCreatePasswordController credentialProviderCreatePasswordController = CredentialProviderCreatePasswordController.this;
                    Executor executor2 = credentialProviderCreatePasswordController.g;
                    if (executor2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("executor");
                        executor2 = null;
                    }
                    executor2.execute(new a(0, credentialProviderCreatePasswordController));
                    return Unit.INSTANCE;
                }
            });
        }
    }
}
