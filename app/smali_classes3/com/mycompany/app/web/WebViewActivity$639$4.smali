.class Lcom/mycompany/app/web/WebViewActivity$639$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MySnackbar$SnackbarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity$639;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$639;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$639$4;->a:Lcom/mycompany/app/web/WebViewActivity$639;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$639$4;->a:Lcom/mycompany/app/web/WebViewActivity$639;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$639;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ko:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->lo:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ko:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->lo:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v0, v1, v2, v4, v4}, Lcom/mycompany/app/main/MainUtil;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->a7:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 42
    .line 43
    .line 44
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->a7:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 45
    .line 46
    :cond_3
    sget v2, Lnet/kaki87/soul2/testing/R$style;->DialogExpandTheme:I

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    move v2, v4

    .line 55
    :cond_4
    new-instance v3, Lcom/mycompany/app/dialog/DialogOpenType;

    .line 56
    .line 57
    invoke-direct {v3, v0, v2, v1, v4}, Lcom/mycompany/app/dialog/DialogOpenType;-><init>(Landroid/app/Activity;ILjava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->a7:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$421;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$421;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    .line 69
    .line 70
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 71
    .line 72
    if-nez v1, :cond_6

    .line 73
    .line 74
    if-eqz v2, :cond_5

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    :goto_0
    return-void

    .line 78
    :cond_6
    :goto_1
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->a7:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 79
    .line 80
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->a6()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    const/4 v8, 0x1

    .line 95
    invoke-virtual/range {v3 .. v8}, Lcom/mycompany/app/view/MyDialogBottom;->x(IIZZZ)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$639$4;->a:Lcom/mycompany/app/web/WebViewActivity$639;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$639;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/mycompany/app/web/WebViewActivity;->jo:J

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ko:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ko:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v5, Landroid/content/Intent;

    .line 18
    .line 19
    const-class v6, Lcom/mycompany/app/main/list/MainListDown;

    .line 20
    .line 21
    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v6, 0x0

    .line 25
    .line 26
    cmp-long v4, v1, v6

    .line 27
    .line 28
    if-lez v4, :cond_1

    .line 29
    .line 30
    const-string v3, "EXTRA_ID"

    .line 31
    .line 32
    invoke-virtual {v5, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v1, "EXTRA_PATH"

    .line 37
    .line 38
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    :goto_0
    const/16 v1, 0x8

    .line 42
    .line 43
    invoke-virtual {v0, v5, v1}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$639$4;->a:Lcom/mycompany/app/web/WebViewActivity$639;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$639;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->u3:Lcom/mycompany/app/view/MySnackbar;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ko:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lo:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
