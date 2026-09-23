.class Lcom/mycompany/app/web/WebViewActivity$MyStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/CastStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyStateListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$MyStateListener;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$MyStateListener;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 7
    .line 8
    iput-boolean v0, p1, Lcom/mycompany/app/web/WebViewActivity;->wb:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity;->I1()V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Lcom/mycompany/app/cast/CastLocal;->a()Lcom/mycompany/app/cast/CastLocal;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/cast/CastLocal;->c()V

    .line 21
    .line 22
    .line 23
    :goto_1
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->Bb:Landroidx/mediarouter/app/MediaRouteButton;

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 35
    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$33;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Lcom/mycompany/app/web/WebViewActivity$33;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_4
    :goto_2
    return-void
.end method
