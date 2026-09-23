.class Lcom/mycompany/app/dialog/DialogPreImage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$2;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage$2;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->f0:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 14
    .line 15
    const/high16 v2, -0x1000000

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 21
    .line 22
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 23
    .line 24
    int-to-float v2, v2

    .line 25
    const/high16 v3, 0x41000000    # 8.0f

    .line 26
    .line 27
    div-float/2addr v2, v3

    .line 28
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const v3, -0x4f4f50

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyDialogRelative;->d(II)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->f0:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$3;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$3;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 49
    .line 50
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$4;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$5;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$5;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$6;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$6;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$7;

    .line 81
    .line 82
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$7;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$8;

    .line 91
    .line 92
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$8;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 99
    .line 100
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$9;

    .line 101
    .line 102
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$9;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->r:Z

    .line 109
    .line 110
    if-eqz v1, :cond_1

    .line 111
    .line 112
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->h0:Landroid/widget/FrameLayout;

    .line 113
    .line 114
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$10;

    .line 115
    .line 116
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$10;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogPreImage;->C(Z)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->f0:Landroid/widget/FrameLayout;

    .line 130
    .line 131
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$11;

    .line 132
    .line 133
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreImage$11;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_0
    return-void
.end method
