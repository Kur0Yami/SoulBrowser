package androidx.credentials;

import android.content.Context;
import android.credentials.ClearCredentialStateException;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.OutcomeReceiver;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.credentials.exceptions.ClearCredentialException;
import androidx.credentials.exceptions.ClearCredentialUnknownException;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@RequiresApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/credentials/CredentialProviderFrameworkImpl;", "Landroidx/credentials/CredentialProvider;", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCredentialProviderFrameworkImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CredentialProviderFrameworkImpl.kt\nandroidx/credentials/CredentialProviderFrameworkImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,378:1\n1855#2,2:379\n*S KotlinDebug\n*F\n+ 1 CredentialProviderFrameworkImpl.kt\nandroidx/credentials/CredentialProviderFrameworkImpl\n*L\n261#1:379,2\n*E\n"})
/* loaded from: classes.dex */
public final class CredentialProviderFrameworkImpl implements CredentialProvider {

    /* renamed from: a, reason: collision with root package name */
    public final android.credentials.CredentialManager f866a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/credentials/CredentialProviderFrameworkImpl$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "CREATE_DOM_EXCEPTION_PREFIX", "Ljava/lang/String;", "GET_DOM_EXCEPTION_PREFIX", "TAG", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public CredentialProviderFrameworkImpl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f866a = (android.credentials.CredentialManager) context.getSystemService("credential");
    }

    @Override // androidx.credentials.CredentialProvider
    public final boolean isAvailableOnDevice() {
        if (Build.VERSION.SDK_INT >= 34 && this.f866a != null) {
            return true;
        }
        return false;
    }

    @Override // androidx.credentials.CredentialProvider
    public final void onClearCredential(ClearCredentialStateRequest request, CancellationSignal cancellationSignal, Executor executor, final CredentialManagerCallback callback) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Log.i("CredManProvService", "In CredentialProviderFrameworkImpl onClearCredential");
        Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onClearCredential$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Unit invoke() {
                CredentialManagerCallback.this.a(new ClearCredentialException("androidx.credentials.TYPE_CLEAR_CREDENTIAL_UNSUPPORTED_EXCEPTION", "Your device doesn't support credential manager"));
                return Unit.INSTANCE;
            }
        };
        android.credentials.CredentialManager credentialManager = this.f866a;
        if (credentialManager == null) {
            function0.invoke();
            return;
        }
        OutcomeReceiver<Void, ClearCredentialStateException> outcomeReceiver = new OutcomeReceiver() { // from class: androidx.credentials.CredentialProviderFrameworkImpl$onClearCredential$outcome$1
            public final void onError(Throwable th) {
                ClearCredentialStateException error = (ClearCredentialStateException) th;
                Intrinsics.checkNotNullParameter(error, "error");
                Log.i("CredManProvService", "ClearCredentialStateException error returned from framework");
                CredentialManagerCallback.this.a(new ClearCredentialUnknownException(null));
            }

            public final void onResult(Object obj) {
                Log.i("CredManProvService", "Clear result returned from framework: ");
                CredentialManagerCallback.this.onResult((Void) obj);
            }
        };
        Intrinsics.checkNotNull(credentialManager);
        credentialManager.clearCredentialState(new android.credentials.ClearCredentialStateRequest(new Bundle()), cancellationSignal, executor, outcomeReceiver);
    }
}
