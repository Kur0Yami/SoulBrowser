.class Lcom/mycompany/app/dialog/DialogCreateAlbum$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogCreateAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCreateAlbum;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$19;->f:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$19;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$19;->f:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b1:Ljava/util/List;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->b1:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 45
    .line 46
    :goto_0
    const/4 v1, 0x1

    .line 47
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->c1:Z

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->f1:I

    .line 51
    .line 52
    iput v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->g1:I

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->j1:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->H()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->t0:Landroidx/core/widget/NestedScrollView;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->L0:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->M0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    sget v3, Lnet/kaki87/soul2/testing/R$string;->verify_image:I

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    .line 79
    .line 80
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->O0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    iget v3, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 83
    .line 84
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->P0:Lcom/mycompany/app/view/MyProgressBar;

    .line 92
    .line 93
    iget v2, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->e1:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->P0:Lcom/mycompany/app/view/MyProgressBar;

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    const-string v2, "0"

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->R0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 114
    .line 115
    if-eqz v2, :cond_2

    .line 116
    .line 117
    const v2, -0x50506

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const/high16 v2, -0x1000000

    .line 122
    .line 123
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    .line 125
    .line 126
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_4

    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;->d1:Ljava/util/ArrayList;

    .line 137
    .line 138
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogCreateAlbum$19;->c:Z

    .line 139
    .line 140
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->C(Lcom/mycompany/app/dialog/DialogCreateAlbum;Ljava/util/ArrayList;Z)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogCreateAlbum$19$1;

    .line 145
    .line 146
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogCreateAlbum$19$1;-><init>(Lcom/mycompany/app/dialog/DialogCreateAlbum$19;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
