.class Lcom/mycompany/app/dialog/DialogGreeting$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogGreeting;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogGreeting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting$2;->c:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting$2;->c:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->h0:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogGreeting;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 32
    .line 33
    new-instance v3, Lcom/mycompany/app/dialog/DialogGreeting$4;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->h0:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 44
    .line 45
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    const/4 v5, -0x1

    .line 48
    const/4 v6, -0x2

    .line 49
    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogGreeting$5;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGreeting$5;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    .line 67
    .line 68
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 69
    .line 70
    const/high16 v2, -0x1000000

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->f0:Landroid/widget/ImageView;

    .line 75
    .line 76
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_favorite_dark_20:I

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    const v3, -0x50506

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 90
    .line 91
    const v3, -0x37000001

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->f0:Landroid/widget/ImageView;

    .line 99
    .line 100
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_favorite_black_20:I

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 111
    .line 112
    const v2, -0xc6b655

    .line 113
    .line 114
    .line 115
    const v3, -0x70708

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 119
    .line 120
    .line 121
    :goto_1
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->d0:Z

    .line 122
    .line 123
    if-eqz v1, :cond_4

    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    sget v2, Lnet/kaki87/soul2/testing/R$string;->freq_asked:I

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    sget v2, Lnet/kaki87/soul2/testing/R$string;->greeting:I

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    .line 139
    .line 140
    :goto_2
    const/4 v1, 0x1

    .line 141
    iput v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->q0:I

    .line 142
    .line 143
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->t0:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 148
    .line 149
    new-instance v2, Lcom/mycompany/app/dialog/DialogGreeting$3;

    .line 150
    .line 151
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogGreeting$3;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    :goto_3
    return-void
.end method
