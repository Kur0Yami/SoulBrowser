.class Lcom/mycompany/app/dialog/DialogViewRead$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$24;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$24;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->d0:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 8
    .line 9
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->G:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    sput-boolean v2, Lcom/mycompany/app/pref/PrefRead;->G:Z

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 23
    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    const-string v4, "mNotiRead"

    .line 27
    .line 28
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->w:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->S()V

    .line 44
    .line 45
    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->C:Lcom/mycompany/app/view/MyFadeFrame;

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeFrame;->setAutoHide(Z)V

    .line 54
    .line 55
    .line 56
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 62
    .line 63
    sget v3, Lnet/kaki87/soul2/testing/R$string;->font:I

    .line 64
    .line 65
    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 72
    .line 73
    const-string v3, "TTS"

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    invoke-direct {v1, v4, v3}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 83
    .line 84
    sget v3, Lnet/kaki87/soul2/testing/R$string;->tts_highlight:I

    .line 85
    .line 86
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtri;->j:Z

    .line 87
    .line 88
    const/4 v5, 0x2

    .line 89
    invoke-direct {v1, v5, v3, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 96
    .line 97
    sget v3, Lnet/kaki87/soul2/testing/R$string;->auto_speak:I

    .line 98
    .line 99
    sget-boolean v4, Lcom/mycompany/app/pref/PrefRead;->L:Z

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    invoke-direct {v1, v5, v3, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 109
    .line 110
    sget v3, Lnet/kaki87/soul2/testing/R$string;->trans_auto:I

    .line 111
    .line 112
    sget-boolean v4, Lcom/mycompany/app/pref/PrefRead;->M:Z

    .line 113
    .line 114
    const/4 v5, 0x4

    .line 115
    invoke-direct {v1, v5, v3, v2, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    new-instance v3, Lcom/mycompany/app/view/MyPopupMenu;

    .line 122
    .line 123
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 124
    .line 125
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogViewRead;->k:Lcom/mycompany/app/view/MyWebBody;

    .line 126
    .line 127
    sget-boolean v8, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 128
    .line 129
    new-instance v9, Lcom/mycompany/app/dialog/DialogViewRead$66;

    .line 130
    .line 131
    invoke-direct {v9, v0}, Lcom/mycompany/app/dialog/DialogViewRead$66;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 132
    .line 133
    .line 134
    move-object v6, p1

    .line 135
    invoke-direct/range {v3 .. v9}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 136
    .line 137
    .line 138
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->E0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 139
    .line 140
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 141
    .line 142
    if-eqz p1, :cond_5

    .line 143
    .line 144
    iput-object v3, p1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 145
    .line 146
    :cond_5
    :goto_0
    return-void
.end method
