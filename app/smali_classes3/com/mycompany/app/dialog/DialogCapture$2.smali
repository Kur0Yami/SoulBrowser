.class Lcom/mycompany/app/dialog/DialogCapture$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$2;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogCapture$2;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->z:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->z:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v2, :cond_7

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->x:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->y:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogCapture;->Q:Z

    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 38
    .line 39
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 45
    .line 46
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iput v3, v0, Lcom/mycompany/app/dialog/DialogCapture;->B:I

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->C:I

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    iput v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->D:I

    .line 65
    .line 66
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 67
    .line 68
    new-instance v5, Lcom/mycompany/app/dialog/DialogCapture$8;

    .line 69
    .line 70
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogCapture$8;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MySizeImage;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 77
    .line 78
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    .line 80
    .line 81
    new-instance v1, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 82
    .line 83
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->H:Lcom/mycompany/app/view/MySizeImage;

    .line 84
    .line 85
    new-instance v5, Lcom/mycompany/app/dialog/DialogCapture$9;

    .line 86
    .line 87
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogCapture$9;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v2, v5, v3}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;I)V

    .line 91
    .line 92
    .line 93
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->J:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 97
    .line 98
    if-nez v2, :cond_4

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-nez v2, :cond_5

    .line 106
    .line 107
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogCapture;->Q:Z

    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 110
    .line 111
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 117
    .line 118
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 125
    .line 126
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    .line 128
    .line 129
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->w:Lcom/mycompany/app/main/MainActivity;

    .line 130
    .line 131
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 132
    .line 133
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    .line 138
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture$3;

    .line 139
    .line 140
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCapture$3;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 154
    .line 155
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture$4;

    .line 156
    .line 157
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCapture$4;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 164
    .line 165
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture$5;

    .line 166
    .line 167
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCapture$5;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->O:Lcom/mycompany/app/view/MyLineText;

    .line 174
    .line 175
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture$6;

    .line 176
    .line 177
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCapture$6;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCapture;->r()V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogCapture;->F:Landroid/widget/FrameLayout;

    .line 187
    .line 188
    new-instance v2, Lcom/mycompany/app/dialog/DialogCapture$7;

    .line 189
    .line 190
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogCapture$7;-><init>(Lcom/mycompany/app/dialog/DialogCapture;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogNormal;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 194
    .line 195
    .line 196
    :cond_7
    :goto_1
    return-void
.end method
