package androidx.browser.browseractions;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Deprecated
/* loaded from: classes.dex */
public class BrowserActionsIntent {

    @RestrictTo
    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface BrowserActionsFallDialogListener {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface BrowserActionsItemId {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface BrowserActionsUrlType {
    }

    /* loaded from: classes.dex */
    public static final class Builder {
    }
}
