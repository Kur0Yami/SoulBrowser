.class Landroidx/browser/customtabs/CustomTabsClient$3;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source "SourceFile"


# instance fields
.field public final c:Landroid/os/Handler;

.field public final synthetic f:Landroidx/browser/customtabs/CustomTabsCallback;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3$2;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$2;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final onActivityLayout(IIIIILandroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$8;

    .line 7
    .line 8
    move-object v2, p0

    .line 9
    move v3, p1

    .line 10
    move v4, p2

    .line 11
    move v5, p3

    .line 12
    move v6, p4

    .line 13
    move v7, p5

    .line 14
    move-object v8, p6

    .line 15
    invoke-direct/range {v1 .. v8}, Landroidx/browser/customtabs/CustomTabsClient$3$8;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;IIIIILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v2, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onActivityResized(IILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3$6;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/browser/customtabs/CustomTabsClient$3$6;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;IILandroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3$3;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$3;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onMinimized(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3$9;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$9;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3$1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$1;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3$4;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsClient$3$4;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroidx/browser/customtabs/CustomTabsClient$3$5;

    .line 7
    .line 8
    move-object v2, p0

    .line 9
    move v3, p1

    .line 10
    move-object v4, p2

    .line 11
    move v5, p3

    .line 12
    move-object v6, p4

    .line 13
    invoke-direct/range {v1 .. v6}, Landroidx/browser/customtabs/CustomTabsClient$3$5;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, v2, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onUnminimized(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3$10;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$10;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onWarmupCompleted(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsClient$3$7;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Landroidx/browser/customtabs/CustomTabsClient$3$7;-><init>(Landroidx/browser/customtabs/CustomTabsClient$3;Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3;->c:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
