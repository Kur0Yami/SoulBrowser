package androidx.credentials.playservices.controllers;

import a.a;
import android.content.Context;
import android.os.Bundle;
import android.os.CancellationSignal;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\b \u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u0001*\b\b\u0002\u0010\u0004*\u00020\u0001*\b\b\u0003\u0010\u0005*\u00020\u0001*\b\b\u0004\u0010\u0006*\u00020\u00012\u00020\u0007:\u0001\b¨\u0006\t"}, d2 = {"Landroidx/credentials/playservices/controllers/CredentialProviderController;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "T1", "T2", "R2", "R1", "E1", "Landroidx/credentials/playservices/controllers/CredentialProviderBaseController;", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class CredentialProviderController<T1, T2, R2, R1, E1> extends CredentialProviderBaseController {
    public static final /* synthetic */ int d = 0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/CredentialProviderController$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ERROR_MESSAGE_START_ACTIVITY_FAILED", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public CredentialProviderController(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static final void b(CancellationSignal cancellationSignal, Function0 onResultOrException) {
        Intrinsics.checkNotNullParameter(onResultOrException, "onResultOrException");
        CredentialProviderPlayServicesImpl.INSTANCE.getClass();
        if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
            return;
        }
        onResultOrException.invoke();
    }

    public static boolean c(Bundle resultData, Function2 conversionFn, final Executor executor, final CredentialManagerCallback callback, CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(resultData, "resultData");
        Intrinsics.checkNotNullParameter(conversionFn, "conversionFn");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (!resultData.getBoolean("FAILURE_RESPONSE")) {
            return false;
        }
        final Object invoke = conversionFn.invoke(resultData.getString("EXCEPTION_TYPE"), resultData.getString("EXCEPTION_MESSAGE"));
        b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$maybeReportErrorFromResultReceiver$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Unit invoke() {
                executor.execute(new a(7, callback, invoke));
                return Unit.INSTANCE;
            }
        });
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.credentials.exceptions.CreateCredentialUnknownException, T] */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.credentials.exceptions.CreateCredentialCancellationException, T] */
    public static final boolean d(int i, Function2 cancelOnError, final Function1 onError, CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(cancelOnError, "cancelOnError");
        Intrinsics.checkNotNullParameter(onError, "onError");
        if (i != -1) {
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = new CreateCredentialUnknownException(android.support.v4.media.a.f(i, "activity with result code: ", " indicating not RESULT_OK"));
            if (i == 0) {
                objectRef.element = new CreateCredentialCancellationException("activity is cancelled by the user.");
            }
            cancelOnError.invoke(cancellationSignal, new Function0<Unit>(onError, objectRef) { // from class: androidx.credentials.playservices.controllers.CredentialProviderController$Companion$maybeReportErrorResultCodeCreate$1

                /* renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Lambda f914c;
                public final /* synthetic */ Ref.ObjectRef f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                    this.f914c = (Lambda) onError;
                    this.f = objectRef;
                }

                /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
                @Override // kotlin.jvm.functions.Function0
                public final Unit invoke() {
                    this.f914c.invoke(this.f.element);
                    return Unit.INSTANCE;
                }
            });
            return true;
        }
        return false;
    }
}
