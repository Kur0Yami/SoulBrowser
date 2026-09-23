package androidx.activity;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b&\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/activity/OnBackPressedCallback;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOnBackPressedCallback.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnBackPressedCallback.kt\nandroidx/activity/OnBackPressedCallback\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,115:1\n1855#2,2:116\n*S KotlinDebug\n*F\n+ 1 OnBackPressedCallback.kt\nandroidx/activity/OnBackPressedCallback\n*L\n67#1:116,2\n*E\n"})
/* loaded from: classes.dex */
public abstract class OnBackPressedCallback {

    /* renamed from: a, reason: collision with root package name */
    public boolean f28a = false;
    public final CopyOnWriteArrayList b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    public FunctionReferenceImpl f29c;

    public abstract void a();
}
