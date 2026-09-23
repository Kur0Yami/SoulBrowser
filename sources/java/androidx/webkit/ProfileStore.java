package androidx.webkit;

import androidx.annotation.UiThread;
import java.util.List;

@UiThread
/* loaded from: classes.dex */
public interface ProfileStore {
    boolean deleteProfile(String str);

    List<String> getAllProfileNames();

    Profile getOrCreateProfile(String str);

    Profile getProfile(String str);
}
