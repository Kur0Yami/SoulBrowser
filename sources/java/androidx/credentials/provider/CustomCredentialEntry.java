package androidx.credentials.provider;

import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.app.slice.SliceSpec;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.credentials.provider.BiometricPromptData;
import com.google.android.gms.ads.RequestConfiguration;
import j$.time.Instant;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@RequiresApi
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/credentials/provider/CustomCredentialEntry;", "Landroidx/credentials/provider/CredentialEntry;", "Api28Impl", "Api34Impl", "Api35Impl", "Builder", "Companion", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,907:1\n1#2:908\n*E\n"})
/* loaded from: classes.dex */
public final class CustomCredentialEntry extends CredentialEntry {
    public final String e;
    public final CharSequence f;
    public final PendingIntent g;
    public final boolean h;
    public final CharSequence i;
    public final CharSequence j;
    public final Icon k;
    public final Instant l;
    public final boolean m;
    public final boolean n;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CustomCredentialEntry$Api28Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RequiresApi
    @SourceDebugExtension({"SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api28Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,907:1\n1855#2,2:908\n*S KotlinDebug\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api28Impl\n*L\n531#1:908,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api28Impl {
        public static final CustomCredentialEntry a(Slice slice) {
            Iterator it;
            Intrinsics.checkNotNullParameter(slice, "slice");
            SliceSpec spec = slice.getSpec();
            Intrinsics.checkNotNull(spec);
            String type = spec.getType();
            Intrinsics.checkNotNullExpressionValue(type, "slice.spec!!.type");
            List<SliceItem> items = slice.getItems();
            Intrinsics.checkNotNullExpressionValue(items, "slice.items");
            Iterator it2 = items.iterator();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            CharSequence charSequence = null;
            CharSequence charSequence2 = null;
            PendingIntent pendingIntent = null;
            CharSequence charSequence3 = null;
            CharSequence charSequence4 = null;
            Icon icon = null;
            Instant instant = null;
            CharSequence charSequence5 = null;
            CharSequence charSequence6 = null;
            while (it2.hasNext()) {
                SliceItem sliceItem = (SliceItem) it2.next();
                if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_OPTION_ID")) {
                    charSequence = sliceItem.getText();
                } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_DEDUPLICATION_ID")) {
                    charSequence5 = sliceItem.getText();
                } else {
                    it = it2;
                    if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_IS_DEFAULT_ICON_PREFERRED")) {
                        if (Intrinsics.areEqual(sliceItem.getText(), "true")) {
                            z2 = true;
                        }
                    } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_AFFILIATED_DOMAIN")) {
                        charSequence6 = sliceItem.getText();
                    } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_TYPE_DISPLAY_NAME")) {
                        charSequence4 = sliceItem.getText();
                    } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_USER_NAME")) {
                        charSequence2 = sliceItem.getText();
                    } else if (sliceItem.hasHint("androidx.credentials.provider.credentialEntry.SLICE_HINT_CREDENTIAL_TYPE_DISPLAY_NAME")) {
                        charSequence3 = sliceItem.getText();
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
                    it2 = it;
                }
                it = it2;
                it2 = it;
            }
            try {
                Intrinsics.checkNotNull(charSequence2);
                Intrinsics.checkNotNull(pendingIntent);
                Intrinsics.checkNotNull(icon);
                Intrinsics.checkNotNull(charSequence);
                return new CustomCredentialEntry(type, charSequence2, pendingIntent, z, charSequence3, charSequence4, icon, instant, new BeginGetCustomCredentialOption(charSequence.toString(), new Bundle(), type), z2, charSequence5, charSequence6, null, z3, z4);
            } catch (Exception e) {
                Log.i("CredentialEntry", "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }
    }

    @RequiresApi
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CustomCredentialEntry$Api34Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Api34Impl {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CustomCredentialEntry$Api35Impl;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RequiresApi
    @SourceDebugExtension({"SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api35Impl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,907:1\n1855#2,2:908\n*S KotlinDebug\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Api35Impl\n*L\n370#1:908,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Api35Impl {
        public static final CustomCredentialEntry a(Slice slice) {
            BiometricPromptData biometricPromptData;
            Intrinsics.checkNotNullParameter(slice, "slice");
            CustomCredentialEntry a2 = Api28Impl.a(slice);
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
                String str = a2.e;
                CharSequence charSequence = a2.f;
                PendingIntent pendingIntent = a2.g;
                boolean z = a2.h;
                CharSequence charSequence2 = a2.i;
                CharSequence charSequence3 = a2.j;
                Icon icon = a2.k;
                Instant instant = a2.l;
                BeginGetCredentialOption beginGetCredentialOption = a2.f928a;
                boolean z2 = a2.f929c;
                CharSequence charSequence4 = a2.b;
                CharSequence charSequence5 = a2.d;
                boolean z3 = a2.n;
                boolean z4 = a2.m;
                if (bundle != null) {
                    int i = BiometricPromptData.f923a;
                    biometricPromptData = BiometricPromptData.Companion.a(bundle);
                } else {
                    biometricPromptData = null;
                }
                return new CustomCredentialEntry(str, charSequence, pendingIntent, z, charSequence2, charSequence3, icon, instant, beginGetCredentialOption, z2, charSequence4, charSequence5, biometricPromptData, z3, z4);
            } catch (Exception e) {
                Log.i("CredentialEntry", "fromSlice failed with: " + e.getMessage());
                return null;
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/credentials/provider/CustomCredentialEntry$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCustomCredentialEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomCredentialEntry.kt\nandroidx/credentials/provider/CustomCredentialEntry$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,907:1\n1#2:908\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/credentials/provider/CustomCredentialEntry$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TAG", "Ljava/lang/String;", "credentials_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public static CustomCredentialEntry a(Slice slice) {
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

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CustomCredentialEntry(java.lang.String r9, java.lang.CharSequence r10, android.app.PendingIntent r11, boolean r12, java.lang.CharSequence r13, java.lang.CharSequence r14, android.graphics.drawable.Icon r15, j$.time.Instant r16, androidx.credentials.provider.BeginGetCredentialOption r17, boolean r18, java.lang.CharSequence r19, java.lang.CharSequence r20, androidx.credentials.provider.BiometricPromptData r21, boolean r22, boolean r23) {
        /*
            r8 = this;
            java.lang.String r0 = "type"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "title"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "pendingIntent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "icon"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            java.lang.String r0 = "beginGetCredentialOption"
            r3 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            if (r19 != 0) goto L27
            r4 = r10
        L1e:
            r1 = r8
            r2 = r9
            r5 = r18
            r6 = r20
            r7 = r21
            goto L2a
        L27:
            r4 = r19
            goto L1e
        L2a:
            r1.<init>(r2, r3, r4, r5, r6, r7)
            r8.e = r9
            r8.f = r10
            r8.g = r11
            r8.h = r12
            r8.i = r13
            r8.j = r14
            r8.k = r15
            r11 = r16
            r8.l = r11
            r11 = r23
            r8.m = r11
            r11 = r22
            r8.n = r11
            int r9 = r9.length()
            if (r9 <= 0) goto L5c
            int r9 = r10.length()
            if (r9 <= 0) goto L54
            return
        L54:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "title must not be empty"
            r9.<init>(r10)
            throw r9
        L5c:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r10 = "type must not be empty"
            r9.<init>(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.credentials.provider.CustomCredentialEntry.<init>(java.lang.String, java.lang.CharSequence, android.app.PendingIntent, boolean, java.lang.CharSequence, java.lang.CharSequence, android.graphics.drawable.Icon, j$.time.Instant, androidx.credentials.provider.BeginGetCredentialOption, boolean, java.lang.CharSequence, java.lang.CharSequence, androidx.credentials.provider.BiometricPromptData, boolean, boolean):void");
    }
}
