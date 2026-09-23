.class Lcom/mycompany/app/dialog/DialogUrlLink$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$4;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$4;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->O0:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetPopup;->dismiss()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->O0:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 20
    .line 21
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->k0:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->l0:Z

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move v1, v2

    .line 37
    goto :goto_1

    .line 38
    :cond_4
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->l0:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    :goto_1
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->p0:Z

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    iget v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->s0:I

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_5
    iget v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->r0:I

    .line 50
    .line 51
    :goto_2
    iput v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->b1:I

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 56
    .line 57
    new-instance v4, Lcom/mycompany/app/dialog/DialogUrlLink$37;

    .line 58
    .line 59
    invoke-direct {v4, p1, v1}, Lcom/mycompany/app/dialog/DialogUrlLink$37;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v3}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->b0:Landroid/content/Context;

    .line 72
    .line 73
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->c0:Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;

    .line 74
    .line 75
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->d0:I

    .line 76
    .line 77
    if-nez v1, :cond_6

    .line 78
    .line 79
    sget v1, Lcom/mycompany/app/pref/PrefZone;->e0:I

    .line 80
    .line 81
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 82
    .line 83
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->g0:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_6
    sget v1, Lcom/mycompany/app/pref/PrefZone;->f0:I

    .line 89
    .line 90
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->l0:I

    .line 91
    .line 92
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->h0:Ljava/lang/String;

    .line 93
    .line 94
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->m0:Ljava/lang/String;

    .line 95
    .line 96
    :goto_3
    invoke-virtual {v0, v2}, Lcom/mycompany/app/dialog/DialogSetPopup;->C(Z)Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPopup;->n0:Ljava/util/ArrayList;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 103
    .line 104
    if-nez v1, :cond_7

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_7
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPopup$1;

    .line 108
    .line 109
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPopup$1;-><init>(Lcom/mycompany/app/dialog/DialogSetPopup;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    :goto_4
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogUrlLink;->O0:Lcom/mycompany/app/dialog/DialogSetPopup;

    .line 116
    .line 117
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$38;

    .line 118
    .line 119
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogUrlLink$38;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
