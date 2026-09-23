.class Lcom/mycompany/app/dialog/DialogDownFont$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownFont;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownFont;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownFont$2;->c:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownFont$2;->c:Lcom/mycompany/app/dialog/DialogDownFont;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    const/high16 v2, 0x42e00000    # 112.0f

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    float-to-int v1, v1

    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->p0:Landroid/widget/ImageView;

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_dark_24:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    const v2, -0x50506

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->p0:Landroid/widget/ImageView;

    .line 57
    .line 58
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_black_24:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    const/high16 v2, -0x1000000

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    sget v2, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->r0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 85
    .line 86
    if-eqz v1, :cond_3

    .line 87
    .line 88
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownFont$5;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDownFont$5;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->q:Lcom/mycompany/app/view/MyDialogBottom$ShowAdListener;

    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->i0:Lcom/mycompany/app/view/MyAdFrame;

    .line 102
    .line 103
    new-instance v4, Lcom/mycompany/app/dialog/DialogDownFont$3;

    .line 104
    .line 105
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogDownFont$3;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->n0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 112
    .line 113
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 114
    .line 115
    if-eqz v4, :cond_2

    .line 116
    .line 117
    const v4, -0xdededf

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const/4 v4, -0x1

    .line 122
    :goto_1
    sget v5, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 123
    .line 124
    iput v4, v1, Lcom/mycompany/app/view/MyRoundLinear;->n:I

    .line 125
    .line 126
    iput v5, v1, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 127
    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundLinear;->c(ZZ)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->o0:Lcom/mycompany/app/view/MyLineFrame;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineFrame;->setLineUp(Z)V

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->p()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogDownFont;->G(Z)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownFont;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 144
    .line 145
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownFont$4;

    .line 146
    .line 147
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownFont$4;-><init>(Lcom/mycompany/app/dialog/DialogDownFont;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_2
    return-void
.end method
