package androidx.credentials.playservices;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;
import com.google.android.gms.auth.api.identity.BeginSignInResult;
import com.google.android.gms.auth.api.identity.GetSignInIntentRequest;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.auth.api.identity.zbx;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.fido.Fido;
import com.google.android.gms.fido.fido2.Fido2ApiClient;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.internal.p000authapi.zbaj;
import com.google.android.gms.internal.p000authapi.zbat;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/HiddenActivity;", "Landroid/app/Activity;", "<init>", "()V", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@RestrictTo
/* loaded from: classes.dex */
public class HiddenActivity extends Activity {
    public static final /* synthetic */ int g = 0;

    /* renamed from: c, reason: collision with root package name */
    public ResultReceiver f882c;
    public boolean f;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/credentials/playservices/HiddenActivity$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DEFAULT_VALUE", "I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "KEY_AWAITING_RESULT", "Ljava/lang/String;", "TAG", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public final void a(ResultReceiver resultReceiver, String str, String str2) {
        CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f912a;
        CredentialProviderBaseController.Companion.c(resultReceiver, str, str2);
        finish();
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        ResultReceiver resultReceiver = this.f882c;
        if (resultReceiver != null) {
            CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f912a;
            CredentialProviderBaseController.Companion.d(resultReceiver, i, i2, intent);
        }
        this.f = false;
        finish();
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.common.api.GoogleApi, com.google.android.gms.fido.fido2.Fido2ApiClient] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object, com.google.android.gms.auth.api.identity.zbk] */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.lang.Object, com.google.android.gms.auth.api.identity.zbx] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, com.google.android.gms.auth.api.identity.zbx] */
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i = 0;
        overridePendingTransition(0, 0);
        String stringExtra = getIntent().getStringExtra("TYPE");
        ResultReceiver resultReceiver = (ResultReceiver) getIntent().getParcelableExtra("RESULT_RECEIVER");
        this.f882c = resultReceiver;
        if (resultReceiver == null) {
            finish();
        }
        if (bundle != null) {
            this.f = bundle.getBoolean("androidx.credentials.playservices.AWAITING_RESULT", false);
        }
        if (!this.f) {
            if (stringExtra != null) {
                final int i2 = 3;
                final int i3 = 2;
                Task task = null;
                final int i4 = 1;
                switch (stringExtra.hashCode()) {
                    case -441061071:
                        if (stringExtra.equals("BEGIN_SIGN_IN")) {
                            BeginSignInRequest beginSignInRequest = (BeginSignInRequest) getIntent().getParcelableExtra("REQUEST_TYPE");
                            final int intExtra = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
                            if (beginSignInRequest != null) {
                                task = new zbat((Activity) Preconditions.checkNotNull(this), (zbx) new Object()).g(beginSignInRequest).g(new a(5, new Function1<BeginSignInResult, Unit>() { // from class: androidx.credentials.playservices.HiddenActivity$handleBeginSignIn$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Unit invoke(BeginSignInResult beginSignInResult) {
                                        HiddenActivity hiddenActivity = HiddenActivity.this;
                                        BeginSignInResult beginSignInResult2 = beginSignInResult;
                                        try {
                                            hiddenActivity.f = true;
                                            hiddenActivity.startIntentSenderForResult(beginSignInResult2.f3362c.getIntentSender(), intExtra, null, 0, 0, 0, null);
                                        } catch (IntentSender.SendIntentException e) {
                                            ResultReceiver resultReceiver2 = hiddenActivity.f882c;
                                            Intrinsics.checkNotNull(resultReceiver2);
                                            hiddenActivity.a(resultReceiver2, "GET_UNKNOWN", "During begin sign in, one tap ui intent sender failure: " + e.getMessage());
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }));
                                task.e(new OnFailureListener(this) { // from class: androidx.credentials.playservices.e
                                    public final /* synthetic */ HiddenActivity f;

                                    {
                                        this.f = this;
                                    }

                                    @Override // com.google.android.gms.tasks.OnFailureListener
                                    public final void c(Exception e) {
                                        int i5 = i2;
                                        String str = "CREATE_INTERRUPTED";
                                        String str2 = "GET_INTERRUPTED";
                                        HiddenActivity hiddenActivity = this.f;
                                        switch (i5) {
                                            case 0:
                                                int i6 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str = "CREATE_UNKNOWN";
                                                }
                                                ResultReceiver resultReceiver2 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver2);
                                                hiddenActivity.a(resultReceiver2, str, "During create public key credential, fido registration failure: " + e.getMessage());
                                                return;
                                            case 1:
                                                int i7 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str = "CREATE_UNKNOWN";
                                                }
                                                ResultReceiver resultReceiver3 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver3);
                                                hiddenActivity.a(resultReceiver3, str, "During save password, found password failure response from one tap " + e.getMessage());
                                                return;
                                            case 2:
                                                int i8 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str2 = "GET_NO_CREDENTIALS";
                                                }
                                                ResultReceiver resultReceiver4 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver4);
                                                hiddenActivity.a(resultReceiver4, str2, "During get sign-in intent, failure response from one tap: " + e.getMessage());
                                                return;
                                            default:
                                                int i9 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str2 = "GET_NO_CREDENTIALS";
                                                }
                                                ResultReceiver resultReceiver5 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver5);
                                                hiddenActivity.a(resultReceiver5, str2, "During begin sign in, failure response from one tap: " + e.getMessage());
                                                return;
                                        }
                                    }
                                });
                            }
                            if (task == null) {
                                Log.i("HiddenActivity", "During begin sign in, params is null, nothing to launch for begin sign in");
                                finish();
                                return;
                            }
                            return;
                        }
                        break;
                    case 15545322:
                        if (stringExtra.equals("CREATE_PUBLIC_KEY_CREDENTIAL")) {
                            final PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) getIntent().getParcelableExtra("REQUEST_TYPE");
                            final int intExtra2 = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
                            if (publicKeyCredentialCreationOptions != null) {
                                int i5 = Fido.f3735a;
                                final ?? googleApi = new GoogleApi((Activity) this, (Api<Api.ApiOptions.NoOptions>) Fido2ApiClient.f3737a, Api.ApiOptions.NO_OPTIONS, (StatusExceptionMapper) new ApiExceptionMapper());
                                task = googleApi.doRead(TaskApiCall.builder().run(new RemoteCall(googleApi, publicKeyCredentialCreationOptions) { // from class: com.google.android.gms.fido.fido2.zza

                                    /* renamed from: a, reason: collision with root package name */
                                    public final /* synthetic */ PublicKeyCredentialCreationOptions f3788a;

                                    {
                                        this.f3788a = publicKeyCredentialCreationOptions;
                                    }

                                    /* JADX WARN: Multi-variable type inference failed */
                                    @Override // com.google.android.gms.common.api.internal.RemoteCall
                                    public final void accept(Object obj, Object obj2) {
                                        zzf zzfVar = new zzf((TaskCompletionSource) obj2);
                                        com.google.android.gms.internal.fido.zzs zzsVar = (com.google.android.gms.internal.fido.zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService();
                                        Parcel I1 = zzsVar.I1();
                                        ClassLoader classLoader = com.google.android.gms.internal.fido.zzc.f10284a;
                                        I1.writeStrongBinder(zzfVar);
                                        com.google.android.gms.internal.fido.zzc.c(I1, this.f3788a);
                                        zzsVar.f2(1, I1);
                                    }
                                }).setMethodKey(5407).build()).g(new a(2, new Function1<PendingIntent, Unit>() { // from class: androidx.credentials.playservices.HiddenActivity$handleCreatePublicKeyCredential$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Unit invoke(PendingIntent pendingIntent) {
                                        HiddenActivity hiddenActivity = HiddenActivity.this;
                                        PendingIntent result = pendingIntent;
                                        Intrinsics.checkNotNullParameter(result, "result");
                                        try {
                                            hiddenActivity.f = true;
                                            hiddenActivity.startIntentSenderForResult(result.getIntentSender(), intExtra2, null, 0, 0, 0, null);
                                        } catch (IntentSender.SendIntentException e) {
                                            ResultReceiver resultReceiver2 = hiddenActivity.f882c;
                                            Intrinsics.checkNotNull(resultReceiver2);
                                            hiddenActivity.a(resultReceiver2, "CREATE_UNKNOWN", "During public key credential, found IntentSender failure on public key creation: " + e.getMessage());
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }));
                                task.e(new OnFailureListener(this) { // from class: androidx.credentials.playservices.e
                                    public final /* synthetic */ HiddenActivity f;

                                    {
                                        this.f = this;
                                    }

                                    @Override // com.google.android.gms.tasks.OnFailureListener
                                    public final void c(Exception e) {
                                        int i52 = i;
                                        String str = "CREATE_INTERRUPTED";
                                        String str2 = "GET_INTERRUPTED";
                                        HiddenActivity hiddenActivity = this.f;
                                        switch (i52) {
                                            case 0:
                                                int i6 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str = "CREATE_UNKNOWN";
                                                }
                                                ResultReceiver resultReceiver2 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver2);
                                                hiddenActivity.a(resultReceiver2, str, "During create public key credential, fido registration failure: " + e.getMessage());
                                                return;
                                            case 1:
                                                int i7 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str = "CREATE_UNKNOWN";
                                                }
                                                ResultReceiver resultReceiver3 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver3);
                                                hiddenActivity.a(resultReceiver3, str, "During save password, found password failure response from one tap " + e.getMessage());
                                                return;
                                            case 2:
                                                int i8 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str2 = "GET_NO_CREDENTIALS";
                                                }
                                                ResultReceiver resultReceiver4 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver4);
                                                hiddenActivity.a(resultReceiver4, str2, "During get sign-in intent, failure response from one tap: " + e.getMessage());
                                                return;
                                            default:
                                                int i9 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str2 = "GET_NO_CREDENTIALS";
                                                }
                                                ResultReceiver resultReceiver5 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver5);
                                                hiddenActivity.a(resultReceiver5, str2, "During begin sign in, failure response from one tap: " + e.getMessage());
                                                return;
                                        }
                                    }
                                });
                            }
                            if (task == null) {
                                Log.w("HiddenActivity", "During create public key credential, request is null, so nothing to launch for public key credentials");
                                finish();
                                return;
                            }
                            return;
                        }
                        break;
                    case 1246634622:
                        if (stringExtra.equals("CREATE_PASSWORD")) {
                            SavePasswordRequest savePasswordRequest = (SavePasswordRequest) getIntent().getParcelableExtra("REQUEST_TYPE");
                            final int intExtra3 = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
                            if (savePasswordRequest != null) {
                                task = new zbaj((Activity) Preconditions.checkNotNull(this), new Object()).g(savePasswordRequest).g(new a(3, new Function1<SavePasswordResult, Unit>() { // from class: androidx.credentials.playservices.HiddenActivity$handleCreatePassword$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Unit invoke(SavePasswordResult savePasswordResult) {
                                        HiddenActivity hiddenActivity = HiddenActivity.this;
                                        SavePasswordResult savePasswordResult2 = savePasswordResult;
                                        try {
                                            hiddenActivity.f = true;
                                            hiddenActivity.startIntentSenderForResult(savePasswordResult2.f3371c.getIntentSender(), intExtra3, null, 0, 0, 0, null);
                                        } catch (IntentSender.SendIntentException e) {
                                            ResultReceiver resultReceiver2 = hiddenActivity.f882c;
                                            Intrinsics.checkNotNull(resultReceiver2);
                                            hiddenActivity.a(resultReceiver2, "CREATE_UNKNOWN", "During save password, found UI intent sender failure: " + e.getMessage());
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }));
                                task.e(new OnFailureListener(this) { // from class: androidx.credentials.playservices.e
                                    public final /* synthetic */ HiddenActivity f;

                                    {
                                        this.f = this;
                                    }

                                    @Override // com.google.android.gms.tasks.OnFailureListener
                                    public final void c(Exception e) {
                                        int i52 = i4;
                                        String str = "CREATE_INTERRUPTED";
                                        String str2 = "GET_INTERRUPTED";
                                        HiddenActivity hiddenActivity = this.f;
                                        switch (i52) {
                                            case 0:
                                                int i6 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str = "CREATE_UNKNOWN";
                                                }
                                                ResultReceiver resultReceiver2 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver2);
                                                hiddenActivity.a(resultReceiver2, str, "During create public key credential, fido registration failure: " + e.getMessage());
                                                return;
                                            case 1:
                                                int i7 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str = "CREATE_UNKNOWN";
                                                }
                                                ResultReceiver resultReceiver3 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver3);
                                                hiddenActivity.a(resultReceiver3, str, "During save password, found password failure response from one tap " + e.getMessage());
                                                return;
                                            case 2:
                                                int i8 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str2 = "GET_NO_CREDENTIALS";
                                                }
                                                ResultReceiver resultReceiver4 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver4);
                                                hiddenActivity.a(resultReceiver4, str2, "During get sign-in intent, failure response from one tap: " + e.getMessage());
                                                return;
                                            default:
                                                int i9 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str2 = "GET_NO_CREDENTIALS";
                                                }
                                                ResultReceiver resultReceiver5 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver5);
                                                hiddenActivity.a(resultReceiver5, str2, "During begin sign in, failure response from one tap: " + e.getMessage());
                                                return;
                                        }
                                    }
                                });
                            }
                            if (task == null) {
                                Log.i("HiddenActivity", "During save password, params is null, nothing to launch for create password");
                                finish();
                                return;
                            }
                            return;
                        }
                        break;
                    case 1980564212:
                        if (stringExtra.equals("SIGN_IN_INTENT")) {
                            GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) getIntent().getParcelableExtra("REQUEST_TYPE");
                            final int intExtra4 = getIntent().getIntExtra("ACTIVITY_REQUEST_CODE", 1);
                            if (getSignInIntentRequest != null) {
                                task = new zbat((Activity) Preconditions.checkNotNull(this), (zbx) new Object()).h(getSignInIntentRequest).g(new a(4, new Function1<PendingIntent, Unit>() { // from class: androidx.credentials.playservices.HiddenActivity$handleGetSignInIntent$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Unit invoke(PendingIntent pendingIntent) {
                                        HiddenActivity hiddenActivity = HiddenActivity.this;
                                        PendingIntent pendingIntent2 = pendingIntent;
                                        try {
                                            hiddenActivity.f = true;
                                            hiddenActivity.startIntentSenderForResult(pendingIntent2.getIntentSender(), intExtra4, null, 0, 0, 0, null);
                                        } catch (IntentSender.SendIntentException e) {
                                            ResultReceiver resultReceiver2 = hiddenActivity.f882c;
                                            Intrinsics.checkNotNull(resultReceiver2);
                                            hiddenActivity.a(resultReceiver2, "GET_UNKNOWN", "During get sign-in intent, one tap ui intent sender failure: " + e.getMessage());
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }));
                                task.e(new OnFailureListener(this) { // from class: androidx.credentials.playservices.e
                                    public final /* synthetic */ HiddenActivity f;

                                    {
                                        this.f = this;
                                    }

                                    @Override // com.google.android.gms.tasks.OnFailureListener
                                    public final void c(Exception e) {
                                        int i52 = i3;
                                        String str = "CREATE_INTERRUPTED";
                                        String str2 = "GET_INTERRUPTED";
                                        HiddenActivity hiddenActivity = this.f;
                                        switch (i52) {
                                            case 0:
                                                int i6 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str = "CREATE_UNKNOWN";
                                                }
                                                ResultReceiver resultReceiver2 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver2);
                                                hiddenActivity.a(resultReceiver2, str, "During create public key credential, fido registration failure: " + e.getMessage());
                                                return;
                                            case 1:
                                                int i7 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str = "CREATE_UNKNOWN";
                                                }
                                                ResultReceiver resultReceiver3 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver3);
                                                hiddenActivity.a(resultReceiver3, str, "During save password, found password failure response from one tap " + e.getMessage());
                                                return;
                                            case 2:
                                                int i8 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str2 = "GET_NO_CREDENTIALS";
                                                }
                                                ResultReceiver resultReceiver4 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver4);
                                                hiddenActivity.a(resultReceiver4, str2, "During get sign-in intent, failure response from one tap: " + e.getMessage());
                                                return;
                                            default:
                                                int i9 = HiddenActivity.g;
                                                Intrinsics.checkNotNullParameter(e, "e");
                                                if (!(e instanceof ApiException) || !CredentialProviderBaseController.b.contains(Integer.valueOf(((ApiException) e).getStatusCode()))) {
                                                    str2 = "GET_NO_CREDENTIALS";
                                                }
                                                ResultReceiver resultReceiver5 = hiddenActivity.f882c;
                                                Intrinsics.checkNotNull(resultReceiver5);
                                                hiddenActivity.a(resultReceiver5, str2, "During begin sign in, failure response from one tap: " + e.getMessage());
                                                return;
                                        }
                                    }
                                });
                            }
                            if (task == null) {
                                Log.i("HiddenActivity", "During get sign-in intent, params is null, nothing to launch for get sign-in intent");
                                finish();
                                return;
                            }
                            return;
                        }
                        break;
                }
            }
            Log.w("HiddenActivity", "Activity handed an unsupported type");
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        outState.putBoolean("androidx.credentials.playservices.AWAITING_RESULT", this.f);
        super.onSaveInstanceState(outState);
    }
}
