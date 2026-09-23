.class Landroidx/browser/auth/AuthTabSessionToken$MockCallback;
.super Landroid/support/customtabs/IAuthTabCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/auth/AuthTabSessionToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockCallback"
.end annotation


# virtual methods
.method public final onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p1
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onWarmupCompleted(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
