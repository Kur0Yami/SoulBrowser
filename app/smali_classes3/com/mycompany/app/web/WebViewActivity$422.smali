.class Lcom/mycompany/app/web/WebViewActivity$422;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MySnackbar$SnackbarListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$422;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$422;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->s3:Lcom/mycompany/app/view/MySnackbar;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySnackbar;->getSnackItem()Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/view/MySnackbar$SnackItem;->d:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/view/MySnackbar$SnackItem;->e:Ljava/lang/String;

    .line 20
    .line 21
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZone;->c0:Z

    .line 22
    .line 23
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->k4()V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_8

    .line 44
    .line 45
    const-string v2, "about:blank"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    sget v2, Lnet/kaki87/soul2/testing/R$style;->DialogExpandTheme:I

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_5

    .line 61
    .line 62
    move v2, v7

    .line 63
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_6

    .line 68
    .line 69
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 70
    .line 71
    :cond_6
    move-object v4, v0

    .line 72
    new-instance v0, Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 73
    .line 74
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$423;

    .line 75
    .line 76
    invoke-direct {v6, v1}, Lcom/mycompany/app/web/WebViewActivity$423;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 77
    .line 78
    .line 79
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;ILjava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogPopupMenu$PopupMenuListener;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->b7:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 83
    .line 84
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$424;

    .line 85
    .line 86
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$424;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 90
    .line 91
    .line 92
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 93
    .line 94
    if-nez v0, :cond_7

    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    :cond_7
    iget-object v8, v1, Lcom/mycompany/app/web/WebViewActivity;->b7:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 99
    .line 100
    iget-boolean v11, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->a6()Z

    .line 103
    .line 104
    .line 105
    move-result v12

    .line 106
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    const/4 v13, 0x1

    .line 115
    invoke-virtual/range {v8 .. v13}, Lcom/mycompany/app/view/MyDialogBottom;->x(IIZZZ)V

    .line 116
    .line 117
    .line 118
    :cond_8
    :goto_0
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->c0:Z

    .line 119
    .line 120
    if-eqz v0, :cond_9

    .line 121
    .line 122
    sput-boolean v7, Lcom/mycompany/app/pref/PrefZone;->c0:Z

    .line 123
    .line 124
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 125
    .line 126
    const/16 v1, 0xf

    .line 127
    .line 128
    const-string v2, "mPopNoti"

    .line 129
    .line 130
    invoke-static {v1, v0, v2, v7}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 131
    .line 132
    .line 133
    :cond_9
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$422;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s3:Lcom/mycompany/app/view/MySnackbar;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/view/MySnackbar;->getSnackItem()Lcom/mycompany/app/view/MySnackbar$SnackItem;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/view/MySnackbar$SnackItem;->d:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/mycompany/app/view/MySnackbar$SnackItem;->e:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Qc:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$422$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$422$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$422;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$422;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->s3:Lcom/mycompany/app/view/MySnackbar;

    .line 5
    .line 6
    return-void
.end method
