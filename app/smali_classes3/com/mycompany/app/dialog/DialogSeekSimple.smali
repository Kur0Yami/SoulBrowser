.class public Lcom/mycompany/app/dialog/DialogSeekSimple;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic x0:I


# instance fields
.field public final a0:I

.field public final b0:I

.field public c0:Landroid/app/Activity;

.field public d0:Landroid/content/Context;

.field public e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

.field public final f0:I

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Lcom/mycompany/app/view/MyLineText;

.field public i0:Lcom/mycompany/app/view/MyImageFilter;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroid/widget/SeekBar;

.field public m0:Lcom/mycompany/app/view/MyButtonImage;

.field public n0:Lcom/mycompany/app/view/MyButtonImage;

.field public o0:Lcom/mycompany/app/view/MyLineText;

.field public p0:Lcom/mycompany/app/view/MyLineText;

.field public q0:Lcom/mycompany/app/view/MyLineText;

.field public r0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public s0:I

.field public final t0:I

.field public u0:Z

.field public v0:Ljava/lang/String;

.field public w0:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->c0:Landroid/app/Activity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 13
    .line 14
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->f0:I

    .line 15
    .line 16
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 17
    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    const/16 p1, 0xa

    .line 21
    .line 22
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 23
    .line 24
    const/16 p1, 0xc8

    .line 25
    .line 26
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 p1, 0x14

    .line 31
    .line 32
    const/4 p3, 0x2

    .line 33
    const/4 p4, 0x1

    .line 34
    if-ne p2, p4, :cond_1

    .line 35
    .line 36
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 37
    .line 38
    const/16 p2, 0x1e

    .line 39
    .line 40
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 41
    .line 42
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->t0:I

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_1
    const/16 v0, 0x9

    .line 47
    .line 48
    const/4 v1, 0x5

    .line 49
    if-ne p2, p3, :cond_2

    .line 50
    .line 51
    iput p4, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 52
    .line 53
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 54
    .line 55
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->t0:I

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_2
    const/4 v2, 0x3

    .line 60
    const/16 v3, 0x64

    .line 61
    .line 62
    if-ne p2, v2, :cond_3

    .line 63
    .line 64
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 65
    .line 66
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 p1, 0x4

    .line 70
    if-ne p2, p1, :cond_4

    .line 71
    .line 72
    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 74
    .line 75
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    if-ne p2, v1, :cond_5

    .line 79
    .line 80
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 81
    .line 82
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const/4 p1, 0x6

    .line 86
    const-string p3, " "

    .line 87
    .line 88
    if-ne p2, p1, :cond_6

    .line 89
    .line 90
    iput p4, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 91
    .line 92
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 100
    .line 101
    sget p3, Lnet/kaki87/soul2/testing/R$string;->time_hour:I

    .line 102
    .line 103
    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->v0:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    const/4 p1, 0x7

    .line 111
    if-ne p2, p1, :cond_7

    .line 112
    .line 113
    iput p4, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 114
    .line 115
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_7
    const/16 p1, 0x8

    .line 119
    .line 120
    if-ne p2, p1, :cond_8

    .line 121
    .line 122
    iput p4, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 123
    .line 124
    const/16 p1, 0x32

    .line 125
    .line 126
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_8
    if-ne p2, v0, :cond_9

    .line 130
    .line 131
    iput v2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 132
    .line 133
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_9
    const/16 p1, 0xc

    .line 137
    .line 138
    if-ne p2, p1, :cond_a

    .line 139
    .line 140
    iput p4, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 141
    .line 142
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 143
    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 150
    .line 151
    sget p3, Lnet/kaki87/soul2/testing/R$string;->time_day:I

    .line 152
    .line 153
    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->v(ILandroid/content/Context;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->v0:Ljava/lang/String;

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_a
    iput v2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 161
    .line 162
    iput v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 163
    .line 164
    :goto_0
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 165
    .line 166
    iget p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 167
    .line 168
    if-ge p1, p2, :cond_b

    .line 169
    .line 170
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_b
    iget p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 174
    .line 175
    if-le p1, p2, :cond_c

    .line 176
    .line 177
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 178
    .line 179
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 180
    .line 181
    if-nez p1, :cond_d

    .line 182
    .line 183
    return-void

    .line 184
    :cond_d
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekSimple$1;

    .line 185
    .line 186
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSeekSimple$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekSimple;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    .line 191
    .line 192
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSeekSimple;I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->t0:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->a0:I

    .line 10
    .line 11
    if-ge p1, v2, :cond_1

    .line 12
    .line 13
    :goto_0
    move p1, v2

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->b0:I

    .line 16
    .line 17
    if-le p1, v2, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    :goto_1
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 21
    .line 22
    if-ne v2, p1, :cond_3

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_3
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 26
    .line 27
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->f0:I

    .line 28
    .line 29
    const-string v2, "%"

    .line 30
    .line 31
    if-nez p1, :cond_4

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget p0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 39
    .line 40
    invoke-static {p1, p0, v2, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    const/4 v3, 0x0

    .line 45
    const-string v4, "x"

    .line 46
    .line 47
    const/4 v5, 0x1

    .line 48
    if-ne p1, v5, :cond_6

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 56
    .line 57
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 61
    .line 62
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 63
    .line 64
    if-le v1, v0, :cond_5

    .line 65
    .line 66
    move v3, v5

    .line 67
    :cond_5
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 68
    .line 69
    if-eq p1, v3, :cond_9

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->D()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_6
    const/4 v6, 0x2

    .line 76
    if-ne p1, v6, :cond_8

    .line 77
    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 84
    .line 85
    invoke-static {v2}, Lcom/mycompany/app/ocr/OcrDetector;->x(I)F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 100
    .line 101
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 102
    .line 103
    if-le v1, v0, :cond_7

    .line 104
    .line 105
    move v3, v5

    .line 106
    :cond_7
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 107
    .line 108
    if-eq p1, v3, :cond_9

    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->D()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_8
    const/4 v0, 0x3

    .line 115
    if-ne p1, v0, :cond_a

    .line 116
    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 123
    .line 124
    invoke-static {p1, v0, v2, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->i0:Lcom/mycompany/app/view/MyImageFilter;

    .line 128
    .line 129
    if-eqz p1, :cond_9

    .line 130
    .line 131
    iget p0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 132
    .line 133
    invoke-virtual {p1, p0}, Lcom/mycompany/app/view/MyImageFilter;->setImageBright(I)V

    .line 134
    .line 135
    .line 136
    :cond_9
    :goto_2
    return-void

    .line 137
    :cond_a
    const/4 v0, 0x6

    .line 138
    if-eq p1, v0, :cond_c

    .line 139
    .line 140
    const/16 v0, 0xc

    .line 141
    .line 142
    if-ne p1, v0, :cond_b

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v0, ""

    .line 148
    .line 149
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget p0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 153
    .line 154
    invoke-static {p1, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->B(Ljava/lang/StringBuilder;ILandroidx/appcompat/widget/AppCompatTextView;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_c
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->s0:I

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->v0:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->r0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->r0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const v1, -0xbbcca

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const v1, -0x50506

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/high16 v1, -0x1000000

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->u0:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 40
    .line 41
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_r:I

    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 53
    .line 54
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_r:I

    .line 55
    .line 56
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 67
    .line 68
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->seek_progress_a:I

    .line 69
    .line 70
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 80
    .line 81
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->seek_thumb_a:I

    .line 82
    .line 83
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekSimple;->C()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->i0:Lcom/mycompany/app/view/MyImageFilter;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    iput-object v1, v0, Lcom/mycompany/app/view/MyImageFilter;->c:Landroid/graphics/Paint;

    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/view/MyImageFilter;->f:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->i0:Lcom/mycompany/app/view/MyImageFilter;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->p0:Lcom/mycompany/app/view/MyLineText;

    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 76
    .line 77
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->o0:Lcom/mycompany/app/view/MyLineText;

    .line 85
    .line 86
    :cond_8
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->c0:Landroid/app/Activity;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->d0:Landroid/content/Context;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->e0:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 91
    .line 92
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->l0:Landroid/widget/SeekBar;

    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekSimple;->v0:Ljava/lang/String;

    .line 99
    .line 100
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
