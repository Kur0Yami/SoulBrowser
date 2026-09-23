.class Lcom/mycompany/app/web/WebViewActivity$272$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$272;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$272;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$272$1;->c:Lcom/mycompany/app/web/WebViewActivity$272;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$272$1;->c:Lcom/mycompany/app/web/WebViewActivity$272;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$272;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Mc:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1e

    .line 16
    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->w9:Z

    .line 28
    .line 29
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->x9:Z

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    sget-boolean v8, Lcom/mycompany/app/pref/PrefVideo;->n:Z

    .line 33
    .line 34
    invoke-static/range {v3 .. v8}, Lcom/mycompany/app/main/MainUtil;->G7(Landroid/view/Window;Landroid/view/View;ZZZZ)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->V9()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->w9:Z

    .line 46
    .line 47
    sget-boolean v3, Lcom/mycompany/app/pref/PrefVideo;->n:Z

    .line 48
    .line 49
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->F7(Landroid/view/Window;ZZ)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$273;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$273;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method
