.class Lcom/mycompany/app/web/WebViewActivity$512;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogMenuMain$DownMenuListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->J7:Z

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I7:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->H7:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebViewActivity;->t9(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->j3(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 23
    .line 24
    const-class v4, Lcom/mycompany/app/setting/SettingClean;

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "EXTRA_PATH"

    .line 30
    .line 31
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I7:Z

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 11
    .line 12
    const-class v3, Lcom/mycompany/app/setting/SettingMenu;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/mycompany/app/web/WebViewActivity;->j3(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 23
    .line 24
    const-class v4, Lcom/mycompany/app/setting/SettingMain;

    .line 25
    .line 26
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "EXTRA_PATH"

    .line 30
    .line 31
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->r0:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->v8:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->Y3()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    sget v2, Lnet/kaki87/soul2/testing/R$string;->restart_guide_1:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, "\n\n"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$string;->restart_guide_2:I

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    sget v2, Lnet/kaki87/soul2/testing/R$string;->restart_guide_3:I

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, "\n"

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$string;->restart_guide_4:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance v2, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$671;

    .line 86
    .line 87
    invoke-direct {v3, v1}, Lcom/mycompany/app/web/WebViewActivity$671;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 88
    .line 89
    .line 90
    const/4 v4, 0x1

    .line 91
    invoke-direct {v2, v1, v0, v4, v3}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 92
    .line 93
    .line 94
    iput-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->v8:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 95
    .line 96
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$672;

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$672;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    iget-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 106
    .line 107
    if-eqz v0, :cond_4

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->w8:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    :goto_0
    return-void

    .line 115
    :cond_5
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->s4()V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 119
    .line 120
    sget v2, Lnet/kaki87/soul2/testing/R$string;->restart_noti:I

    .line 121
    .line 122
    sget v3, Lnet/kaki87/soul2/testing/R$string;->restart_title:I

    .line 123
    .line 124
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$673;

    .line 125
    .line 126
    invoke-direct {v4, v1}, Lcom/mycompany/app/web/WebViewActivity$673;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 130
    .line 131
    .line 132
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->w8:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 133
    .line 134
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$674;

    .line 135
    .line 136
    invoke-direct {v2, v1}, Lcom/mycompany/app/web/WebViewActivity$674;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$512;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->e4()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->u1(Lcom/mycompany/app/web/WebViewActivity;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
