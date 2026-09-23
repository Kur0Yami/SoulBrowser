package androidx.credentials.provider;

import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.BiometricPromptData;
import com.google.android.gms.ads.RequestConfiguration;
import j$.time.Instant;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@RequiresApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/credentials/provider/PublicKeyCredentialEntry;", "Landroidx/credentials/provider/CredentialEntry;", "Api28Impl", "Api34Impl", "Api35Impl", "Builder", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPublicKeyCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,866:1\n1#2:867\n*E\n"})
/* loaded from: classes.dex */
public final class PublicKeyCredentialEntry extends CredentialEntry {
    public final CharSequence e;
    public final CharSequence f;
    public final CharSequence g;
    public final PendingIntent h;
    public final Icon i;
    public final Instant j;
    public final boolean k;
    public final boolean l;
    public final boolean m;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RequiresApi
    @SourceDebugExtension({"SMAP\nPublicKeyCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,866:1\n1855#2,2:867\n*S KotlinDebug\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api28Impl\n*L\n531#1:867,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api28Impl {
        public static final PublicKeyCredentialEntry a(Slice slice) {
            Intrinsics.checkNotNullParameter(slice, "slice");
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            CharSequence charSequence = null;
            CharSequence charSequence2 = null;
            CharSequence charSequence3 = null;
            PendingIntent pendingIntent = null;
            Icon icon = null;
            Instant instant = null;
            CharSequence charSequence4 = null;
            CharSequence charSequence5 = null;
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            CharSequence charSequence6 = null;
            for (SliceItem sliceItem : items) {
                if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID")) {
                    charSequence6 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_DEDUPLICATION_ID")) {
                    charSequence4 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_IS_DEFAULT_ICON_PREFERRED")) {
                    if (Intrinsics.areEqual(sliceItem.getText(), "true")) {
                        z2 = true;
                    }
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_AFFILIATED_DOMAIN")) {
                    charSequence5 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME")) {
                    charSequence3 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME")) {
                    charSequence = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME")) {
                    charSequence2 = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_PROFILE_ICON")) {
                    icon = sliceItem.getIcon();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_PENDING_INTENT")) {
                    pendingIntent = sliceItem.getAction();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_LAST_USED_TIME_MILLIS")) {
                    instant = Instant.ofEpochMilli(sliceItem.getLong());
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_ALLOWED")) {
                    if (Intrinsics.areEqual(sliceItem.getText(), "true")) {
                        z = true;
                    }
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_AUTO_SELECT_FROM_OPTION")) {
                    z3 = true;
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_DEFAULT_ICON_RES_ID")) {
                    z4 = true;
                }
            }
            try {
                Intrinsics.checkNotNull(charSequence);
                Intrinsics.checkNotNull(charSequence3);
                Intrinsics.checkNotNull(pendingIntent);
                Intrinsics.checkNotNull(icon);
                Bundle data = new Bundle();
                Intrinsics.checkNotNull(charSequence6);
                String id = charSequence6.toString();
                Intrinsics.checkNotNullParameter(data, "data");
                Intrinsics.checkNotNullParameter(id, "id");
                return new PublicKeyCredentialEntry(charSequence, charSequence2, charSequence3, pendingIntent, icon, instant, z, new BeginGetPublicKeyCredentialOption(id, data, "{\"dummy_key\":\"dummy_value\"}"), z2, charSequence4, charSequence5, null, z3, z4);
            } catch (Exception e) {
                Log.i("PublicKeyCredEntry", "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }
    }

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/PublicKeyCredentialEntry$Api34Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api34Impl {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RequiresApi
    @SourceDebugExtension({"SMAP\nPublicKeyCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,866:1\n1855#2,2:867\n*S KotlinDebug\n*F\n+ 1 PublicKeyCredentialEntry.kt\nandroidx/credentials/provider/PublicKeyCredentialEntry$Api35Impl\n*L\n370#1:867,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api35Impl {
        public static final PublicKeyCredentialEntry a(Slice slice) {
            BiometricPromptData biometricPromptData;
            Intrinsics.checkNotNullParameter(slice, "slice");
            PublicKeyCredentialEntry a2 = Api28Impl.a(slice);
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
                CharSequence charSequence = a2.e;
                CharSequence charSequence2 = a2.f;
                CharSequence charSequence3 = a2.g;
                PendingIntent pendingIntent = a2.h;
                Icon icon = a2.i;
                Instant instant = a2.j;
                boolean z = a2.k;
                BeginGetCredentialOption beginGetCredentialOption = a2.f928a;
                Intrinsics.checkNotNull(beginGetCredentialOption, "null cannot be cast to non-null type androidx.credentials.provider.BeginGetPublicKeyCredentialOption");
                BeginGetPublicKeyCredentialOption beginGetPublicKeyCredentialOption = (BeginGetPublicKeyCredentialOption) beginGetCredentialOption;
                CharSequence charSequence4 = a2.b;
                boolean z2 = a2.f929c;
                CharSequence charSequence5 = a2.d;
                boolean z3 = a2.m;
                boolean z4 = a2.l;
                if (bundle != null) {
                    int i = BiometricPromptData.f923a;
                    biometricPromptData = BiometricPromptData.Companion.a(bundle);
                } else {
                    biometricPromptData = null;
                }
                return new PublicKeyCredentialEntry(charSequence, charSequence2, charSequence3, pendingIntent, icon, instant, z, beginGetPublicKeyCredentialOption, z2, charSequence4, charSequence5, biometricPromptData, z3, z4);
            } catch (Exception e) {
                Log.i("PublicKeyCredEntry", "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/provider/PublicKeyCredentialEntry$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TAG", "Ljava/lang/String;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PublicKeyCredentialEntry(java.lang.CharSequence r9, java.lang.CharSequence r10, java.lang.CharSequence r11, android.app.PendingIntent r12, android.graphics.drawable.Icon r13, j$.time.Instant r14, boolean r15, androidx.credentials.provider.BeginGetPublicKeyCredentialOption r16, boolean r17, java.lang.CharSequence r18, java.lang.CharSequence r19, androidx.credentials.provider.BiometricPromptData r20, boolean r21, boolean r22) {
        /*
            r8 = this;
            java.lang.String r0 = "username"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "typeDisplayName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "pendingIntent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "icon"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "beginGetPublicKeyCredentialOption"
            r3 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            if (r18 != 0) goto L1f
            r4 = r9
            goto L21
        L1f:
            r4 = r18
        L21:
            java.lang.String r2 = "androidx.credentials.TYPE_PUBLIC_KEY_CREDENTIAL"
            r1 = r8
            r5 = r17
            r6 = r19
            r7 = r20
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r8.e = r9
            r8.f = r10
            r8.g = r11
            r8.h = r12
            r8.i = r13
            r8.j = r14
            r8.k = r15
            r10 = r22
            r8.l = r10
            r10 = r21
            r8.m = r10
            int r9 = r9.length()
            if (r9 <= 0) goto L58
            int r9 = r11.length()
            if (r9 <= 0) goto L50
            return
        L50:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "typeDisplayName must not be empty"
            r9.<init>(r10)
            throw r9
        L58:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "username must not be empty"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.PublicKeyCredentialEntry.<init>(java.lang.CharSequence, java.lang.CharSequence, java.lang.CharSequence, android.app.PendingIntent, android.graphics.drawable.Icon, j$.time.Instant, boolean, androidx.credentials.provider.BeginGetPublicKeyCredentialOption, boolean, java.lang.CharSequence, java.lang.CharSequence, androidx.credentials.provider.BiometricPromptData, boolean, boolean):void");
    }
}
