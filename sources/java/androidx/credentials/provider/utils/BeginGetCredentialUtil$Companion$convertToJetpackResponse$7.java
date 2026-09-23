package androidx.credentials.provider.utils;

import android.app.PendingIntent;
import android.app.slice.Slice;
import android.app.slice.SliceItem;
import android.service.credentials.Action;
import android.util.Log;
import androidx.core.view.accessibility.a;
import androidx.credentials.provider.AuthenticationAction;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Landroidx/credentials/provider/AuthenticationAction;", "entry", "Landroid/service/credentials/Action;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class BeginGetCredentialUtil$Companion$convertToJetpackResponse$7 extends Lambda implements Function1<Action, AuthenticationAction> {
    static {
        new Lambda(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final AuthenticationAction invoke(Action action) {
        Slice slice = a.f(action).getSlice();
        Intrinsics.checkNotNullExpressionValue(slice, "entry.slice");
        Intrinsics.checkNotNullParameter(slice, "slice");
        List<SliceItem> items = slice.getItems();
        Intrinsics.checkNotNullExpressionValue(items, "slice.items");
        Iterator<T> it = items.iterator();
        CharSequence charSequence = null;
        PendingIntent pendingIntent = null;
        while (it.hasNext()) {
            SliceItem b = a.b(it.next());
            if (b.hasHint("androidx.credentials.provider.authenticationAction.SLICE_HINT_PENDING_INTENT")) {
                pendingIntent = b.getAction();
            } else if (b.hasHint("androidx.credentials.provider.authenticationAction.SLICE_HINT_TITLE")) {
                charSequence = b.getText();
            }
        }
        try {
            Intrinsics.checkNotNull(charSequence);
            Intrinsics.checkNotNull(pendingIntent);
            return new AuthenticationAction(charSequence, pendingIntent);
        } catch (Exception e) {
            Log.i("AuthenticationAction", "fromSlice failed with: " + e.getMessage());
            return null;
        }
    }
}
