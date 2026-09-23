.class Lcom/mycompany/app/dialog/DialogEditorErase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditorErase;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorErase$2;->c:Lcom/mycompany/app/dialog/DialogEditorErase;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorErase$2;->c:Lcom/mycompany/app/dialog/DialogEditorErase;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    const/high16 v2, -0x5f000000

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_remove_white_24:I

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_white_24:I

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    const v3, -0x5e8a8a8b

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->h0:Landroid/widget/SeekBar;

    .line 57
    .line 58
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->a0:Landroid/content/Context;

    .line 59
    .line 60
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_w:I

    .line 61
    .line 62
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->h0:Landroid/widget/SeekBar;

    .line 70
    .line 71
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->a0:Landroid/content/Context;

    .line 72
    .line 73
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_w:I

    .line 74
    .line 75
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 83
    .line 84
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->h0:Landroid/widget/SeekBar;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    sget v3, Lnet/kaki87/soul2/testing/R$string;->color_size:I

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->e0:Lcom/mycompany/app/view/MyCircleView;

    .line 108
    .line 109
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->l0:I

    .line 110
    .line 111
    invoke-virtual {v1, v2, v2, v3, v2}, Lcom/mycompany/app/view/MyCircleView;->a(IIIZ)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, ""

    .line 119
    .line 120
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->l0:I

    .line 124
    .line 125
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->h0:Landroid/widget/SeekBar;

    .line 129
    .line 130
    const/16 v2, 0x27

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->h0:Landroid/widget/SeekBar;

    .line 136
    .line 137
    iget v2, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->l0:I

    .line 138
    .line 139
    add-int/lit8 v2, v2, -0x1

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->h0:Landroid/widget/SeekBar;

    .line 145
    .line 146
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorErase$3;

    .line 147
    .line 148
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorErase$3;-><init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 155
    .line 156
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorErase$4;

    .line 157
    .line 158
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorErase$4;-><init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorErase$5;

    .line 167
    .line 168
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorErase$5;-><init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 175
    .line 176
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorErase$6;

    .line 177
    .line 178
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorErase$6;-><init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorErase;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 185
    .line 186
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorErase$7;

    .line 187
    .line 188
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorErase$7;-><init>(Lcom/mycompany/app/dialog/DialogEditorErase;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 192
    .line 193
    .line 194
    :cond_1
    :goto_0
    return-void
.end method
