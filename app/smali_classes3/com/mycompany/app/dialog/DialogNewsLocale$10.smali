.class Lcom/mycompany/app/dialog/DialogNewsLocale$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$10;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$10;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 9
    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 12
    .line 13
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->r0:Lcom/mycompany/app/dialog/DialogNewsLocale$DialogTask;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/mycompany/app/data/DataTrans;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataTrans;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/mycompany/app/data/DataTrans;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyWebSafe;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 67
    .line 68
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->E0:Lcom/mycompany/app/view/MyWebSafe;

    .line 69
    .line 70
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    const/4 v4, -0x1

    .line 73
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$16;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$16;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_0
    return-void
.end method
