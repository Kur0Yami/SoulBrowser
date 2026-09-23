.class Lcom/mycompany/app/web/WebVideoFull$55;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$55;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$55;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->f0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->e0()V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoFull;->l0()V

    .line 23
    .line 24
    .line 25
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->u:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->V:Z

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoFull;->W:Z

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    const/16 v3, 0x8

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->C:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->D:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->H:Lcom/mycompany/app/view/MyTextView;

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    sget v4, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, "%"

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->H:Lcom/mycompany/app/view/MyTextView;

    .line 100
    .line 101
    const-string v3, "S"

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->L:Lcom/mycompany/app/web/WebVideoProgress;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebVideoProgress;->getProgress()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull;->J:Lcom/mycompany/app/view/MyTextView;

    .line 113
    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v5, ""

    .line 117
    .line 118
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    if-nez v1, :cond_4

    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_volume_off_white_24:I

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->I:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_volume_up_white_24:I

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 146
    .line 147
    .line 148
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull;->q:Lcom/mycompany/app/view/MyFadeRelative;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyFadeRelative;->i(Z)V

    .line 151
    .line 152
    .line 153
    iget v1, v0, Lcom/mycompany/app/web/WebVideoFull;->T:I

    .line 154
    .line 155
    const/4 v2, 0x2

    .line 156
    if-eq v1, v2, :cond_5

    .line 157
    .line 158
    const/4 v2, 0x3

    .line 159
    if-ne v1, v2, :cond_6

    .line 160
    .line 161
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull;->j:Landroid/view/ViewGroup;

    .line 162
    .line 163
    if-nez v0, :cond_7

    .line 164
    .line 165
    :cond_6
    :goto_3
    return-void

    .line 166
    :cond_7
    new-instance v1, Lcom/mycompany/app/web/WebVideoFull$55$1;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoFull$55$1;-><init>(Lcom/mycompany/app/web/WebVideoFull$55;)V

    .line 169
    .line 170
    .line 171
    const-wide/16 v2, 0xc8

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    .line 175
    .line 176
    return-void
.end method
