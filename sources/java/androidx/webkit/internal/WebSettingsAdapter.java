package androidx.webkit.internal;

import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;

/* loaded from: classes.dex */
public class WebSettingsAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final WebSettingsBoundaryInterface f1809a;

    public WebSettingsAdapter(WebSettingsBoundaryInterface webSettingsBoundaryInterface) {
        this.f1809a = webSettingsBoundaryInterface;
    }

    public void a(boolean z) {
        this.f1809a.setAlgorithmicDarkeningAllowed(z);
    }
}
