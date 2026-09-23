package androidx.credentials.playservices;

import com.google.android.gms.tasks.OnSuccessListener;
import kotlin.jvm.functions.Function1;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements OnSuccessListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f888c;
    public final /* synthetic */ Function1 f;

    public /* synthetic */ a(int i, Function1 function1) {
        this.f888c = i;
        this.f = function1;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        int i = this.f888c;
        Function1 function1 = this.f;
        switch (i) {
            case 0:
                CredentialProviderPlayServicesImpl.m1$r8$lambda$KkkjfkO_ppPgKkxxIfBnKmqAeg(function1, obj);
                return;
            case 1:
                CredentialProviderPlayServicesImpl.$r8$lambda$wBiSTxUbOhG0ep8ucfM6ivfiSz8(function1, obj);
                return;
            case 2:
                int i2 = HiddenActivity.g;
                function1.invoke(obj);
                return;
            case 3:
                int i3 = HiddenActivity.g;
                function1.invoke(obj);
                return;
            case 4:
                int i4 = HiddenActivity.g;
                function1.invoke(obj);
                return;
            default:
                int i5 = HiddenActivity.g;
                function1.invoke(obj);
                return;
        }
    }
}
