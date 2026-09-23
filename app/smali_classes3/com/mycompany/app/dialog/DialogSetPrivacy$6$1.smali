.class Lcom/mycompany/app/dialog/DialogSetPrivacy$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPrivacy$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPrivacy$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$6$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$6$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy$6;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->d0:Z

    .line 11
    .line 12
    const/16 v3, 0xe

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 17
    .line 18
    iget v4, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 19
    .line 20
    if-eq v2, v4, :cond_1

    .line 21
    .line 22
    sput v4, Lcom/mycompany/app/pref/PrefWeb;->s:I

    .line 23
    .line 24
    const-string v2, "mExitDelete2"

    .line 25
    .line 26
    invoke-static {v1, v3, v4, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    const v2, -0x7f7f80

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    const v2, -0x252526

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    invoke-virtual {v1, v2, v2, v4, v2}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 62
    .line 63
    .line 64
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 65
    .line 66
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 67
    .line 68
    if-eq v1, v2, :cond_5

    .line 69
    .line 70
    sput v2, Lcom/mycompany/app/pref/PrefWeb;->r:I

    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 73
    .line 74
    const-string v4, "mDataDelete2"

    .line 75
    .line 76
    invoke-static {v1, v3, v2, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 80
    .line 81
    if-nez v1, :cond_6

    .line 82
    .line 83
    :goto_1
    return-void

    .line 84
    :cond_6
    iget v2, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 85
    .line 86
    const/4 v3, 0x4

    .line 87
    and-int/2addr v2, v3

    .line 88
    if-ne v2, v3, :cond_7

    .line 89
    .line 90
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    :cond_7
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->f0:I

    .line 94
    .line 95
    const/16 v2, 0x8

    .line 96
    .line 97
    and-int/2addr v1, v2

    .line 98
    if-eq v1, v2, :cond_8

    .line 99
    .line 100
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetPrivacy$9;

    .line 101
    .line 102
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$9;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 110
    .line 111
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPrivacy$8;

    .line 112
    .line 113
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$8;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->B(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
