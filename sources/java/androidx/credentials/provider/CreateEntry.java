package androidx.credentials.provider;

import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.BiometricPromptData;
import com.google.android.gms.ads.RequestConfiguration;
import j$.time.Instant;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;

@RequiresApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/credentials/provider/CreateEntry;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Api28Impl", "Api34Impl", "Api35Impl", "Builder", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,773:1\n1#2:774\n*E\n"})
/* loaded from: classes.dex */
public final class CreateEntry {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f926a;
    public final PendingIntent b;

    /* renamed from: c, reason: collision with root package name */
    public final Icon f927c;
    public final CharSequence d;
    public final Instant e;
    public final Map f;
    public final boolean g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CreateEntry$Api28Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RequiresApi
    @SourceDebugExtension({"SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,773:1\n1855#2,2:774\n*S KotlinDebug\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api28Impl\n*L\n506#1:774,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api28Impl {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Map] */
        public static final CreateEntry a(Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            CharSequence charSequence = null;
            PendingIntent pendingIntent = null;
            Icon icon = null;
            CharSequence charSequence2 = null;
            Instant instant = null;
            boolean z = false;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint("androidx.credentials.provider.createEntry.SLICE_HINT_USER_PROVIDER_ACCOUNT_NAME")) {
                    charSequence = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.createEntry.SLICE_HINT_PROFILE_ICON")) {
                    icon = sliceItem.getIcon();
                } else if (sliceItem.hasHint("androidx.credentials.provider.createEntry.SLICE_HINT_PENDING_INTENT")) {
                    pendingIntent = sliceItem.getAction();
                } else if (sliceItem.hasHint("androidx.credentials.provider.createEntry.SLICE_HINT_CREDENTIAL_COUNT_INFORMATION")) {
                    Bundle bundle = sliceItem.getBundle();
                    HashMap hashMap = new HashMap();
                    if (bundle != null) {
                        Set<String> keySet = bundle.keySet();
                        Intrinsics.checkNotNullExpressionValue(keySet, "bundle.keySet()");
                        for (String it : keySet) {
                            try {
                                Intrinsics.checkNotNullExpressionValue(it, "it");
                                hashMap.put(it, Integer.valueOf(bundle.getInt(it)));
                            } catch (Exception e) {
                                Log.i("CreateEntry", "Issue unpacking credential count info bundle: " + e.getMessage());
                            }
                        }
                    }
                    Intrinsics.checkNotNull(hashMap, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Int?>");
                    linkedHashMap2 = TypeIntrinsics.asMutableMap(hashMap);
                } else if (sliceItem.hasHint("androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS")) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint("androidx.credentials.provider.createEntry.SLICE_HINT_NOTE")) {
                    charSequence2 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.createEntry.SLICE_HINT_LAST_USED_TIME_MILLIS")) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint("androidx.credentials.provider.createEntry.SLICE_HINT_AUTO_SELECT_ALLOWED") && Intrinsics.areEqual(sliceItem.getText(), "true")) {
                    z = true;
                }
            }
            try {
                Intrinsics.checkNotNull(charSequence);
                Intrinsics.checkNotNull(pendingIntent);
                return new CreateEntry(charSequence, pendingIntent, icon, charSequence2, instant, linkedHashMap2, z, null);
            } catch (Exception e2) {
                Log.i("CreateEntry", "fromSlice failed with: " + e2.getMessage());
                return null;
            }
        }
    }

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CreateEntry$Api34Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api34Impl {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CreateEntry$Api35Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RequiresApi
    @SourceDebugExtension({"SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api35Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,773:1\n1855#2,2:774\n*S KotlinDebug\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Api35Impl\n*L\n406#1:774,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api35Impl {
        public static final CreateEntry a(Slice slice) {
            BiometricPromptData biometricPromptData;
            Intrinsics.checkNotNullParameter(slice, "slice");
            CreateEntry a2 = Api28Impl.a(slice);
            if (a2 == null) {
                return null;
            }
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            Bundle bundle = null;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_BIOMETRIC_PROMPT_DATA")) {
                    bundle = sliceItem.getBundle();
                }
            }
            try {
                CharSequence charSequence = a2.f926a;
                PendingIntent pendingIntent = a2.b;
                Icon icon = a2.f927c;
                CharSequence charSequence2 = a2.d;
                Instant instant = a2.e;
                Map map = a2.f;
                boolean z = a2.g;
                if (bundle != null) {
                    int i = BiometricPromptData.f923a;
                    biometricPromptData = BiometricPromptData.Companion.a(bundle);
                } else {
                    biometricPromptData = null;
                }
                return new CreateEntry(charSequence, pendingIntent, icon, charSequence2, instant, map, z, biometricPromptData);
            } catch (Exception e) {
                Log.i("CreateEntry", "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CreateEntry$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0019\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\bR\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0004R\u0014\u0010\u0019\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0004R\u0014\u0010\u001a\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0004R\u0014\u0010\u001b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0004R\u0014\u0010\u001c\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0004R\u0014\u0010\u001d\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0004R\u0014\u0010\u001e\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0004¨\u0006\u001f"}, d2 = {"Landroidx/credentials/provider/CreateEntry$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "AUTO_SELECT_FALSE_STRING", "Ljava/lang/String;", "AUTO_SELECT_TRUE_STRING", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DESCRIPTION_MAX_CHAR_LIMIT", "I", "EXTRA_CREATE_ACCOUNT_NAME_PREFIX", "EXTRA_CREATE_CREDENTIAL_COUNT_INFO_PREFIX", "EXTRA_CREATE_DESCRIPTION_PREFIX", "EXTRA_CREATE_ENTRY_IS_AUTO_SELECT_ALLOWED_PREFIX", "EXTRA_CREATE_ENTRY_LAST_USED_TIME_PREFIX", "EXTRA_CREATE_ENTRY_PENDING_INTENT_PREFIX", "EXTRA_CREATE_ENTRY_SIZE", "EXTRA_CREATE_TYPE_ICON_PREFIX", "REVISION_ID", "SLICE_HINT_ACCOUNT_NAME", "SLICE_HINT_ALLOWED_AUTHENTICATORS", "SLICE_HINT_AUTO_SELECT_ALLOWED", "SLICE_HINT_BIOMETRIC_PROMPT_DATA", "SLICE_HINT_CREDENTIAL_COUNT_INFORMATION", "SLICE_HINT_CRYPTO_OP_ID", "SLICE_HINT_ICON", "SLICE_HINT_LAST_USED_TIME_MILLIS", "SLICE_HINT_NOTE", "SLICE_HINT_PENDING_INTENT", "SLICE_SPEC_TYPE", "TAG", "TYPE_TOTAL_CREDENTIAL", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCreateEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,773:1\n1855#2,2:774\n1864#2,2:778\n1866#2:781\n215#3,2:776\n1#4:780\n*S KotlinDebug\n*F\n+ 1 CreateEntry.kt\nandroidx/credentials/provider/CreateEntry$Companion\n*L\n632#1:774,2\n680#1:778,2\n680#1:781\n648#1:776,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public static CreateEntry a(Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            int i = Build.VERSION.SDK_INT;
            if (i >= 35) {
                return Api35Impl.a(slice);
            }
            if (i >= 28) {
                return Api28Impl.a(slice);
            }
            return null;
        }
    }

    public CreateEntry(CharSequence accountName, PendingIntent pendingIntent, Icon icon, CharSequence charSequence, Instant instant, Map credentialCountInformationMap, boolean z, BiometricPromptData biometricPromptData) {
        Intrinsics.checkNotNullParameter(accountName, "accountName");
        Intrinsics.checkNotNullParameter(pendingIntent, "pendingIntent");
        Intrinsics.checkNotNullParameter(credentialCountInformationMap, "credentialCountInformationMap");
        this.f926a = accountName;
        this.b = pendingIntent;
        this.f927c = icon;
        this.d = charSequence;
        this.e = instant;
        this.f = credentialCountInformationMap;
        this.g = z;
        if (accountName.length() > 0) {
            if (charSequence == null || charSequence.length() <= 300) {
                return;
            } else {
                throw new IllegalArgumentException("Description must follow a limit of 300 characters.");
            }
        }
        throw new IllegalArgumentException("accountName must not be empty");
    }
}
