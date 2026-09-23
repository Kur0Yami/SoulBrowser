package androidx.credentials.provider.utils;

import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.service.credentials.Action;
import android.util.Log;
import androidx.core.view.accessibility.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Landroidx/credentials/provider/Action;", "entry", "Landroid/service/credentials/Action;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class BeginGetCredentialUtil$Companion$convertToJetpackResponse$4 extends Lambda implements Function1<Action, androidx.credentials.provider.Action> {
    static {
        new Lambda(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final androidx.credentials.provider.Action invoke(Action action) {
        Slice slice = a.f(action).getSlice();
        Intrinsics.checkNotNullExpressionValue(slice, "entry.slice");
        Intrinsics.checkNotNullParameter(slice, "slice");
        List<SliceItem> items = slice.getItems();
        Intrinsics.checkNotNullExpressionValue(items, "slice.items");
        Iterator<T> it = items.iterator();
        CharSequence charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        PendingIntent pendingIntent = null;
        CharSequence charSequence2 = null;
        while (it.hasNext()) {
            SliceItem b = a.b(it.next());
            if (b.hasHint("androidx.credentials.provider.action.HINT_ACTION_TITLE")) {
                charSequence = b.getText();
                Intrinsics.checkNotNullExpressionValue(charSequence, "it.text");
            } else if (b.hasHint("androidx.credentials.provider.action.HINT_ACTION_SUBTEXT")) {
                charSequence2 = b.getText();
            } else if (b.hasHint("androidx.credentials.provider.action.SLICE_HINT_PENDING_INTENT")) {
                pendingIntent = b.getAction();
            }
        }
        try {
            Intrinsics.checkNotNull(pendingIntent);
            return new androidx.credentials.provider.Action(charSequence, pendingIntent, charSequence2);
        } catch (Exception e) {
            Log.i("Action", "fromSlice failed with: " + e.getMessage());
            return null;
        }
    }
}
