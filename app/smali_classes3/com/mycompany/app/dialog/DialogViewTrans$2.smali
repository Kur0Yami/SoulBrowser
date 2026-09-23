.class Lcom/mycompany/app/dialog/DialogViewTrans$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$2;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewTrans$2;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    const v2, -0x4f4f50

    .line 17
    .line 18
    .line 19
    sget v3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogLinear;->c(II)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_dark_24:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    const v2, -0xafafb0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    const v2, -0xc0c0c1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->g0:Landroid/view/View;

    .line 48
    .line 49
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_dark:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_play_arrow_black_24:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    const v2, -0x70708

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    const v2, -0x1f1f20

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->g0:Landroid/view/View;

    .line 79
    .line 80
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_color:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$3;

    .line 88
    .line 89
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$3;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    iput v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->R0:I

    .line 97
    .line 98
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 99
    .line 100
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->U0:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 103
    .line 104
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewTrans$4;

    .line 105
    .line 106
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewTrans$4;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    :goto_1
    return-void
.end method
