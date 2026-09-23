.class Lcom/mycompany/app/web/WebViewActivity$327;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$327;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$327;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J3()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$327;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J3()V

    .line 9
    .line 10
    .line 11
    iget-object p2, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$327$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$327$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$327;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    sget p2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J3()V

    .line 35
    .line 36
    .line 37
    iget-object p2, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 38
    .line 39
    if-nez p2, :cond_3

    .line 40
    .line 41
    :goto_0
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$327$2;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebViewActivity$327$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$327;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return p1
.end method
