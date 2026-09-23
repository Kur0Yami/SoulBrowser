package androidx.credentials.playservices.controllers.CreatePublicKeyCredential;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.util.Base64;
import android.util.Log;
import androidx.credentials.CreateCredentialResponse;
import androidx.credentials.CreatePublicKeyCredentialRequest;
import androidx.credentials.CreatePublicKeyCredentialResponse;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialCancellationException;
import androidx.credentials.exceptions.CreateCredentialException;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.domerrors.DomError;
import androidx.credentials.exceptions.domerrors.EncodingError;
import androidx.credentials.exceptions.domerrors.UnknownError;
import androidx.credentials.exceptions.publickeycredential.CreatePublicKeyCredentialDomException;
import androidx.credentials.internal.RequestValidationHelper;
import androidx.credentials.playservices.CredentialProviderPlayServicesImpl;
import androidx.credentials.playservices.HiddenActivity;
import androidx.credentials.playservices.controllers.CreatePublicKeyCredential.PublicKeyCredentialControllerUtility;
import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import androidx.credentials.playservices.controllers.CredentialProviderController;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.fido.common.Transport;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorErrorResponse;
import com.google.android.gms.fido.fido2.api.common.AuthenticatorSelectionCriteria;
import com.google.android.gms.fido.fido2.api.common.COSEAlgorithmIdentifier;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import com.google.android.gms.fido.fido2.api.common.FidoAppIdExtension;
import com.google.android.gms.fido.fido2.api.common.GoogleThirdPartyPaymentExtension;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialDescriptor;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRpEntity;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialUserEntity;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethodExtension;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002 \u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0001:\u0001\u0007¨\u0006\b"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/CredentialProviderCreatePublicKeyCredentialController;", "Landroidx/credentials/playservices/controllers/CredentialProviderController;", "Landroidx/credentials/CreatePublicKeyCredentialRequest;", "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredentialCreationOptions;", "Lcom/google/android/gms/fido/fido2/api/common/PublicKeyCredential;", "Landroidx/credentials/CreateCredentialResponse;", "Landroidx/credentials/exceptions/CreateCredentialException;", "Companion", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CredentialProviderCreatePublicKeyCredentialController extends CredentialProviderController<CreatePublicKeyCredentialRequest, PublicKeyCredentialCreationOptions, PublicKeyCredential, CreateCredentialResponse, CreateCredentialException> {
    public static final /* synthetic */ int j = 0;
    public final Context e;
    public CredentialManagerCallback f;
    public Executor g;
    public CancellationSignal h;
    public final CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1 i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/playservices/controllers/CreatePublicKeyCredential/CredentialProviderCreatePublicKeyCredentialController$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TAG", "Ljava/lang/String;", "credentials-play-services-auth_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1] */
    public CredentialProviderCreatePublicKeyCredentialController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.e = context;
        final Handler handler = new Handler(Looper.getMainLooper());
        this.i = new ResultReceiver(handler) { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$resultReceiver$1
            /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.jvm.internal.FunctionReferenceImpl, kotlin.jvm.functions.Function2] */
            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i, Bundle resultData) {
                byte[] bArr;
                boolean contains$default;
                Intrinsics.checkNotNullParameter(resultData, "resultData");
                CredentialProviderBaseController.Companion companion = CredentialProviderBaseController.f912a;
                ?? functionReferenceImpl = new FunctionReferenceImpl(2, CredentialProviderBaseController.f912a, CredentialProviderBaseController.Companion.class, "createCredentialExceptionTypeToException", "createCredentialExceptionTypeToException$credentials_play_services_auth_release(Ljava/lang/String;Ljava/lang/String;)Landroidx/credentials/exceptions/CreateCredentialException;", 0);
                final CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = CredentialProviderCreatePublicKeyCredentialController.this;
                Executor executor = credentialProviderCreatePublicKeyCredentialController.g;
                final CreateCredentialException createCredentialException = null;
                Executor executor2 = null;
                if (executor == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("executor");
                    executor = null;
                }
                CredentialManagerCallback credentialManagerCallback = credentialProviderCreatePublicKeyCredentialController.f;
                if (credentialManagerCallback == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("callback");
                    credentialManagerCallback = null;
                }
                if (!CredentialProviderController.c(resultData, functionReferenceImpl, executor, credentialManagerCallback, credentialProviderCreatePublicKeyCredentialController.h)) {
                    int i2 = resultData.getInt("ACTIVITY_REQUEST_CODE");
                    Intent intent = (Intent) resultData.getParcelable("RESULT_DATA");
                    int i3 = CredentialProviderBaseController.f913c;
                    if (i2 != i3) {
                        Log.w("CreatePublicKey", "Returned request code " + i3 + " does not match what was given " + i2);
                        return;
                    }
                    if (!CredentialProviderController.d(i, CredentialProviderCreatePublicKeyCredentialController$handleResponse$1.f897c, new Function1<CreateCredentialException, Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Unit invoke(CreateCredentialException createCredentialException2) {
                            CreateCredentialException e = createCredentialException2;
                            Intrinsics.checkNotNullParameter(e, "e");
                            CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = CredentialProviderCreatePublicKeyCredentialController.this;
                            Executor executor3 = credentialProviderCreatePublicKeyCredentialController2.g;
                            if (executor3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("executor");
                                executor3 = null;
                            }
                            executor3.execute(new b(credentialProviderCreatePublicKeyCredentialController2, e, 0));
                            return Unit.INSTANCE;
                        }
                    }, credentialProviderCreatePublicKeyCredentialController.h)) {
                        if (intent != null) {
                            bArr = intent.getByteArrayExtra("FIDO2_CREDENTIAL_EXTRA");
                        } else {
                            bArr = null;
                        }
                        if (bArr == null) {
                            CredentialProviderPlayServicesImpl.Companion companion2 = CredentialProviderPlayServicesImpl.INSTANCE;
                            CancellationSignal cancellationSignal = credentialProviderCreatePublicKeyCredentialController.h;
                            companion2.getClass();
                            if (!CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
                                Executor executor3 = credentialProviderCreatePublicKeyCredentialController.g;
                                if (executor3 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("executor");
                                } else {
                                    executor2 = executor3;
                                }
                                executor2.execute(new a(credentialProviderCreatePublicKeyCredentialController, 0));
                                return;
                            }
                            return;
                        }
                        PublicKeyCredential cred = (PublicKeyCredential) SafeParcelableSerializer.deserializeFromBytes(bArr, PublicKeyCredential.CREATOR);
                        Intrinsics.checkNotNullExpressionValue(cred, "deserializeFromBytes(...)");
                        LinkedHashMap linkedHashMap = PublicKeyCredentialControllerUtility.f907a;
                        Intrinsics.checkNotNullParameter(cred, "cred");
                        Object obj = cred.h;
                        if (obj != null || (obj = cred.i) != null || (obj = cred.j) != null) {
                            Intrinsics.checkNotNullExpressionValue(obj, "getResponse(...)");
                            if (obj instanceof AuthenticatorErrorResponse) {
                                AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) obj;
                                ErrorCode errorCode = authenticatorErrorResponse.f3747c;
                                Intrinsics.checkNotNullExpressionValue(errorCode, "getErrorCode(...)");
                                DomError domError = (DomError) PublicKeyCredentialControllerUtility.f907a.get(errorCode);
                                String str = authenticatorErrorResponse.f;
                                if (domError == null) {
                                    createCredentialException = new CreatePublicKeyCredentialDomException(new UnknownError(), android.support.v4.media.a.C("unknown fido gms exception - ", str));
                                } else {
                                    if (errorCode == ErrorCode.NOT_ALLOWED_ERR && str != null) {
                                        contains$default = StringsKt__StringsKt.contains$default(str, "Unable to get sync account", false, 2, (Object) null);
                                        if (contains$default) {
                                            createCredentialException = new CreateCredentialCancellationException("Passkey registration was cancelled by the user.");
                                        }
                                    }
                                    createCredentialException = new CreatePublicKeyCredentialDomException(domError, str);
                                }
                            }
                            if (createCredentialException != null) {
                                CredentialProviderController.b(credentialProviderCreatePublicKeyCredentialController.h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$4
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public final Unit invoke() {
                                        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = CredentialProviderCreatePublicKeyCredentialController.this;
                                        Executor executor4 = credentialProviderCreatePublicKeyCredentialController2.g;
                                        if (executor4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("executor");
                                            executor4 = null;
                                        }
                                        executor4.execute(new b(credentialProviderCreatePublicKeyCredentialController2, createCredentialException, 1));
                                        return Unit.INSTANCE;
                                    }
                                });
                                return;
                            }
                            try {
                                final CreatePublicKeyCredentialResponse f = CredentialProviderCreatePublicKeyCredentialController.f(cred);
                                CredentialProviderController.b(credentialProviderCreatePublicKeyCredentialController.h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$5
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public final Unit invoke() {
                                        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = CredentialProviderCreatePublicKeyCredentialController.this;
                                        Executor executor4 = credentialProviderCreatePublicKeyCredentialController2.g;
                                        if (executor4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("executor");
                                            executor4 = null;
                                        }
                                        executor4.execute(new a.a(6, credentialProviderCreatePublicKeyCredentialController2, f));
                                        return Unit.INSTANCE;
                                    }
                                });
                                return;
                            } catch (JSONException e) {
                                CredentialProviderController.b(credentialProviderCreatePublicKeyCredentialController.h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$6
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public final Unit invoke() {
                                        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = CredentialProviderCreatePublicKeyCredentialController.this;
                                        Executor executor4 = credentialProviderCreatePublicKeyCredentialController2.g;
                                        if (executor4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("executor");
                                            executor4 = null;
                                        }
                                        executor4.execute(new c(credentialProviderCreatePublicKeyCredentialController2, e, 0));
                                        return Unit.INSTANCE;
                                    }
                                });
                                return;
                            } catch (Throwable th) {
                                CredentialProviderController.b(credentialProviderCreatePublicKeyCredentialController.h, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$handleResponse$7
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public final Unit invoke() {
                                        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController2 = CredentialProviderCreatePublicKeyCredentialController.this;
                                        Executor executor4 = credentialProviderCreatePublicKeyCredentialController2.g;
                                        if (executor4 == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("executor");
                                            executor4 = null;
                                        }
                                        executor4.execute(new d(credentialProviderCreatePublicKeyCredentialController2, th, 0));
                                        return Unit.INSTANCE;
                                    }
                                });
                                return;
                            }
                        }
                        throw new IllegalStateException("No response set.");
                    }
                }
            }
        };
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.credentials.CreateCredentialResponse, androidx.credentials.CreatePublicKeyCredentialResponse] */
    public static CreatePublicKeyCredentialResponse f(PublicKeyCredential response) {
        Intrinsics.checkNotNullParameter(response, "response");
        try {
            String registrationResponseJson = response.F().toString();
            Intrinsics.checkNotNullExpressionValue(registrationResponseJson, "toJson(...)");
            Intrinsics.checkNotNullParameter(registrationResponseJson, "registrationResponseJson");
            Intrinsics.checkNotNullParameter(registrationResponseJson, "registrationResponseJson");
            Bundle bundle = new Bundle();
            bundle.putString("androidx.credentials.BUNDLE_KEY_REGISTRATION_RESPONSE_JSON", registrationResponseJson);
            ?? createCredentialResponse = new CreateCredentialResponse("androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL", bundle);
            if (RequestValidationHelper.Companion.a(registrationResponseJson)) {
                return createCredentialResponse;
            }
            throw new IllegalArgumentException("registrationResponseJson must not be empty, and must be a valid JSON");
        } catch (Throwable th) {
            throw new CreateCredentialUnknownException("The PublicKeyCredential response json had an unexpected exception when parsing: " + th.getMessage());
        }
    }

    /* JADX WARN: Type inference failed for: r1v12, types: [com.google.android.gms.fido.fido2.api.common.AuthenticationExtensions$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.lang.Object, com.google.android.gms.fido.fido2.api.common.AuthenticatorSelectionCriteria$Builder] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions$Builder] */
    public final PublicKeyCredentialCreationOptions e(CreatePublicKeyCredentialRequest request) {
        ResidentKeyRequirement residentKeyRequirement;
        String str;
        String str2;
        int i;
        String str3;
        ArrayList arrayList;
        long j2;
        Intrinsics.checkNotNullParameter(request, "request");
        LinkedHashMap linkedHashMap = PublicKeyCredentialControllerUtility.f907a;
        Intrinsics.checkNotNullParameter(request, "request");
        Context context = this.e;
        Intrinsics.checkNotNullParameter(context, "context");
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context) == 0) {
            PackageManager packageManager = context.getPackageManager();
            Intrinsics.checkNotNullExpressionValue(packageManager, "getPackageManager(...)");
            if (Build.VERSION.SDK_INT >= 28) {
                PackageInfo packageInfo = packageManager.getPackageInfo("com.google.android.gms", 0);
                Intrinsics.checkNotNullExpressionValue(packageInfo, "getPackageInfo(...)");
                j2 = PublicKeyCredentialControllerUtility.GetGMSVersion.a(packageInfo);
            } else {
                j2 = packageManager.getPackageInfo("com.google.android.gms", 0).versionCode;
            }
            if (j2 > 241217000) {
                request.getClass();
                return new PublicKeyCredentialCreationOptions();
            }
        }
        request.getClass();
        JSONObject json = new JSONObject((String) null);
        Intrinsics.checkNotNullParameter(json, "json");
        ?? builder = new Object();
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(builder, "builder");
        String str4 = json.optString("challenge", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        Intrinsics.checkNotNull(str4);
        if (str4.length() != 0) {
            String str5 = "str";
            Intrinsics.checkNotNullParameter(str4, "str");
            byte[] decode = Base64.decode(str4, 11);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
            builder.f3762c = (byte[]) Preconditions.checkNotNull(decode);
            JSONObject jSONObject = json.getJSONObject("user");
            String str6 = jSONObject.getString("id");
            String str7 = "getString(...)";
            Intrinsics.checkNotNullExpressionValue(str6, "getString(...)");
            Intrinsics.checkNotNullParameter(str6, "str");
            byte[] decode2 = Base64.decode(str6, 11);
            Intrinsics.checkNotNullExpressionValue(decode2, "decode(...)");
            String string = jSONObject.getString("name");
            String string2 = jSONObject.getString("displayName");
            String optString = jSONObject.optString("icon", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            Intrinsics.checkNotNull(string2);
            if (string2.length() != 0) {
                if (decode2.length != 0) {
                    Intrinsics.checkNotNull(string);
                    if (string.length() != 0) {
                        builder.b = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(new PublicKeyCredentialUserEntity(string, optString, string2, decode2));
                        Intrinsics.checkNotNullParameter(json, "json");
                        Intrinsics.checkNotNullParameter(builder, "builder");
                        JSONObject jSONObject2 = json.getJSONObject("rp");
                        String string3 = jSONObject2.getString("id");
                        String optString2 = jSONObject2.optString("name", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        String optString3 = jSONObject2.optString("icon", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        Intrinsics.checkNotNull(optString3);
                        if (optString3.length() == 0) {
                            optString3 = null;
                        }
                        Intrinsics.checkNotNull(optString2);
                        if (optString2.length() != 0) {
                            Intrinsics.checkNotNull(string3);
                            if (string3.length() != 0) {
                                builder.f3761a = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(new PublicKeyCredentialRpEntity(string3, optString2, optString3));
                                JSONArray jSONArray = json.getJSONArray("pubKeyCredParams");
                                ArrayList arrayList2 = new ArrayList();
                                int length = jSONArray.length();
                                int i2 = 0;
                                while (i2 < length) {
                                    JSONObject jSONObject3 = jSONArray.getJSONObject(i2);
                                    LinkedHashMap linkedHashMap2 = PublicKeyCredentialControllerUtility.f907a;
                                    String str8 = str7;
                                    int i3 = (int) jSONObject3.getLong("alg");
                                    String optString4 = jSONObject3.optString("type", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                    Intrinsics.checkNotNull(optString4);
                                    if (optString4.length() != 0) {
                                        try {
                                            COSEAlgorithmIdentifier.a(i3);
                                            arrayList2.add(new PublicKeyCredentialParameters(optString4, i3));
                                        } catch (Throwable unused) {
                                        }
                                        i2++;
                                        str7 = str8;
                                    } else {
                                        throw new JSONException("PublicKeyCredentialCreationOptions PublicKeyCredentialParameter type missing or unexpectedly empty");
                                    }
                                }
                                String str9 = str7;
                                builder.d = (List) Preconditions.checkNotNull(arrayList2);
                                Intrinsics.checkNotNullParameter(json, "json");
                                Intrinsics.checkNotNullParameter(builder, "builder");
                                ArrayList arrayList3 = new ArrayList();
                                LinkedHashMap linkedHashMap3 = PublicKeyCredentialControllerUtility.f907a;
                                if (json.has("excludeCredentials")) {
                                    JSONArray jSONArray2 = json.getJSONArray("excludeCredentials");
                                    int length2 = jSONArray2.length();
                                    int i4 = 0;
                                    while (i4 < length2) {
                                        JSONObject jSONObject4 = jSONArray2.getJSONObject(i4);
                                        LinkedHashMap linkedHashMap4 = PublicKeyCredentialControllerUtility.f907a;
                                        String string4 = jSONObject4.getString("id");
                                        String str10 = str9;
                                        Intrinsics.checkNotNullExpressionValue(string4, str10);
                                        Intrinsics.checkNotNullParameter(string4, str5);
                                        JSONArray jSONArray3 = jSONArray2;
                                        byte[] decode3 = Base64.decode(string4, 11);
                                        Intrinsics.checkNotNullExpressionValue(decode3, "decode(...)");
                                        String string5 = jSONObject4.getString("type");
                                        Intrinsics.checkNotNull(string5);
                                        if (string5.length() != 0) {
                                            int i5 = length2;
                                            if (decode3.length != 0) {
                                                if (jSONObject4.has("transports")) {
                                                    i = i4;
                                                    arrayList = new ArrayList();
                                                    JSONArray jSONArray4 = jSONObject4.getJSONArray("transports");
                                                    int length3 = jSONArray4.length();
                                                    str3 = str5;
                                                    int i6 = 0;
                                                    while (i6 < length3) {
                                                        try {
                                                            JSONArray jSONArray5 = jSONArray4;
                                                            Transport a2 = Transport.a(jSONArray4.getString(i6));
                                                            int i7 = i6;
                                                            Intrinsics.checkNotNullExpressionValue(a2, "fromString(...)");
                                                            arrayList.add(a2);
                                                            i6 = i7 + 1;
                                                            jSONArray4 = jSONArray5;
                                                        } catch (Transport.UnsupportedTransportException e) {
                                                            throw new CreatePublicKeyCredentialDomException(new EncodingError(), e.getMessage());
                                                        }
                                                    }
                                                } else {
                                                    i = i4;
                                                    str3 = str5;
                                                    arrayList = null;
                                                }
                                                arrayList3.add(new PublicKeyCredentialDescriptor(string5, decode3, arrayList));
                                                i4 = i + 1;
                                                jSONArray2 = jSONArray3;
                                                length2 = i5;
                                                str5 = str3;
                                                str9 = str10;
                                            } else {
                                                throw new JSONException("PublicKeyCredentialDescriptor id value is not found or unexpectedly empty");
                                            }
                                        } else {
                                            throw new JSONException("PublicKeyCredentialDescriptor type value is not found or unexpectedly empty");
                                        }
                                    }
                                }
                                builder.f = arrayList3;
                                LinkedHashMap linkedHashMap5 = PublicKeyCredentialControllerUtility.f907a;
                                String str11 = "none";
                                String optString5 = json.optString("attestation", "none");
                                Intrinsics.checkNotNull(optString5);
                                if (optString5.length() != 0) {
                                    str11 = optString5;
                                }
                                builder.h = AttestationConveyancePreference.a(str11);
                                Intrinsics.checkNotNullParameter(json, "json");
                                Intrinsics.checkNotNullParameter(builder, "builder");
                                if (json.has("timeout")) {
                                    builder.e = Double.valueOf(json.getLong("timeout") / 1000);
                                }
                                Intrinsics.checkNotNullParameter(json, "json");
                                Intrinsics.checkNotNullParameter(builder, "builder");
                                if (json.has("authenticatorSelection")) {
                                    JSONObject jSONObject5 = json.getJSONObject("authenticatorSelection");
                                    ?? obj = new Object();
                                    boolean optBoolean = jSONObject5.optBoolean("requireResidentKey", false);
                                    String optString6 = jSONObject5.optString("residentKey", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                    Intrinsics.checkNotNull(optString6);
                                    if (optString6.length() > 0) {
                                        residentKeyRequirement = ResidentKeyRequirement.a(optString6);
                                    } else {
                                        residentKeyRequirement = null;
                                    }
                                    obj.b = Boolean.valueOf(optBoolean);
                                    obj.f3750c = residentKeyRequirement;
                                    String optString7 = jSONObject5.optString("authenticatorAttachment", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                    Intrinsics.checkNotNull(optString7);
                                    if (optString7.length() > 0) {
                                        obj.f3749a = Attachment.a(optString7);
                                    }
                                    Attachment attachment = obj.f3749a;
                                    if (attachment == null) {
                                        str = null;
                                    } else {
                                        str = attachment.f3738c;
                                    }
                                    Boolean bool = obj.b;
                                    ResidentKeyRequirement residentKeyRequirement2 = obj.f3750c;
                                    if (residentKeyRequirement2 == null) {
                                        str2 = null;
                                    } else {
                                        str2 = residentKeyRequirement2.f3770c;
                                    }
                                    builder.g = new AuthenticatorSelectionCriteria(str, bool, null, str2);
                                }
                                Intrinsics.checkNotNullParameter(json, "json");
                                Intrinsics.checkNotNullParameter(builder, "builder");
                                if (json.has("extensions")) {
                                    JSONObject jSONObject6 = json.getJSONObject("extensions");
                                    ?? obj2 = new Object();
                                    String optString8 = jSONObject6.optString("appid", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                    Intrinsics.checkNotNull(optString8);
                                    if (optString8.length() > 0) {
                                        obj2.f3741a = new FidoAppIdExtension(optString8);
                                    }
                                    if (jSONObject6.optBoolean("thirdPartyPayment", false)) {
                                        obj2.i = new GoogleThirdPartyPaymentExtension(true);
                                    }
                                    if (jSONObject6.optBoolean("uvm", false)) {
                                        obj2.b = new UserVerificationMethodExtension(true);
                                    }
                                    builder.i = obj2.a();
                                }
                                PublicKeyCredentialCreationOptions a3 = builder.a();
                                Intrinsics.checkNotNullExpressionValue(a3, "build(...)");
                                return a3;
                            }
                            throw new JSONException("PublicKeyCredentialCreationOptions rp ID is missing or unexpectedly empty");
                        }
                        throw new JSONException("PublicKeyCredentialCreationOptions rp name is missing or unexpectedly empty");
                    }
                    throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user name or they are unexpectedly empty");
                }
                throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing user id or they are unexpectedly empty");
            }
            throw new JSONException("PublicKeyCredentialCreationOptions UserEntity missing displayName or they are unexpectedly empty");
        }
        throw new JSONException("Challenge not found in request or is unexpectedly empty");
    }

    public final void g(CreatePublicKeyCredentialRequest request, CredentialManagerCallback callback, Executor executor, CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.h = cancellationSignal;
        this.f = callback;
        this.g = executor;
        try {
            PublicKeyCredentialCreationOptions e = e(request);
            CredentialProviderPlayServicesImpl.INSTANCE.getClass();
            if (CredentialProviderPlayServicesImpl.Companion.a(cancellationSignal)) {
                return;
            }
            Context context = this.e;
            Intent intent = new Intent(context, (Class<?>) HiddenActivity.class);
            intent.putExtra("REQUEST_TYPE", e);
            CredentialProviderBaseController.a(this.i, intent, "CREATE_PUBLIC_KEY_CREDENTIAL");
            try {
                context.startActivity(intent);
            } catch (Exception unused) {
                CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$3
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Unit invoke() {
                        CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = CredentialProviderCreatePublicKeyCredentialController.this;
                        Executor executor2 = credentialProviderCreatePublicKeyCredentialController.g;
                        if (executor2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("executor");
                            executor2 = null;
                        }
                        executor2.execute(new a(credentialProviderCreatePublicKeyCredentialController, 1));
                        return Unit.INSTANCE;
                    }
                });
            }
        } catch (JSONException e2) {
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Unit invoke() {
                    CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = CredentialProviderCreatePublicKeyCredentialController.this;
                    Executor executor2 = credentialProviderCreatePublicKeyCredentialController.g;
                    if (executor2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("executor");
                        executor2 = null;
                    }
                    executor2.execute(new c(credentialProviderCreatePublicKeyCredentialController, e2, 1));
                    return Unit.INSTANCE;
                }
            });
        } catch (Throwable th) {
            CredentialProviderController.b(cancellationSignal, new Function0<Unit>() { // from class: androidx.credentials.playservices.controllers.CreatePublicKeyCredential.CredentialProviderCreatePublicKeyCredentialController$invokePlayServices$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Unit invoke() {
                    CredentialProviderCreatePublicKeyCredentialController credentialProviderCreatePublicKeyCredentialController = CredentialProviderCreatePublicKeyCredentialController.this;
                    Executor executor2 = credentialProviderCreatePublicKeyCredentialController.g;
                    if (executor2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("executor");
                        executor2 = null;
                    }
                    executor2.execute(new d(credentialProviderCreatePublicKeyCredentialController, th, 1));
                    return Unit.INSTANCE;
                }
            });
        }
    }
}
