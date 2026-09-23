.class Lcom/mycompany/app/web/WebViewActivity$366;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$366;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$366;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->el:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->fl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->gl:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->el:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->fl:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->gl:Ljava/lang/String;

    .line 15
    .line 16
    iget-boolean v4, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->u4()V

    .line 29
    .line 30
    .line 31
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    iput-boolean v9, v1, Lcom/mycompany/app/web/WebViewActivity;->nb:Z

    .line 37
    .line 38
    sput-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 39
    .line 40
    :cond_2
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->hl:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->il:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->jl:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->a6()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 59
    .line 60
    iget-boolean v5, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 61
    .line 62
    new-instance v8, Lcom/mycompany/app/web/WebViewActivity$367;

    .line 63
    .line 64
    invoke-direct {v8, v1}, Lcom/mycompany/app/web/WebViewActivity$367;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-direct/range {v0 .. v8}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->q6:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 71
    .line 72
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$368;

    .line 73
    .line 74
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$368;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->q6:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 85
    .line 86
    iput-boolean v9, v0, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 87
    .line 88
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->dl:Z

    .line 90
    .line 91
    return-void
.end method
