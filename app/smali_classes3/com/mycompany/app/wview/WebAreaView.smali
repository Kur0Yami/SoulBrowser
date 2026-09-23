.class public Lcom/mycompany/app/wview/WebAreaView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public c:Z

.field public f:Landroid/content/Context;

.field public g:Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;

.field public h:Lcom/mycompany/app/view/MyButtonImage;

.field public i:Lcom/mycompany/app/view/MyButtonImage;

.field public j:Lcom/mycompany/app/view/MyButtonImage;

.field public k:Lcom/mycompany/app/view/MyButtonImage;

.field public l:Landroid/graphics/RectF;

.field public m:I

.field public n:Landroid/graphics/Paint;

.field public o:Z

.field public p:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final u:I

.field public final v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaView;->c:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 8
    .line 9
    const/high16 v1, 0x43500000    # 208.0f

    .line 10
    .line 11
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/mycompany/app/wview/WebAreaView;->u:I

    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 24
    .line 25
    new-instance p1, Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->l:Landroid/graphics/RectF;

    .line 31
    .line 32
    new-instance p1, Lcom/mycompany/app/wview/WebAreaView$1;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    sget p1, Lcom/mycompany/app/main/MainApp;->H1:I

    .line 41
    .line 42
    int-to-float p1, p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/mycompany/app/wview/WebAreaView$2;

    .line 47
    .line 48
    invoke-direct {p1}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 60
    .line 61
    invoke-direct {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 69
    .line 70
    invoke-direct {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 78
    .line 79
    invoke-direct {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    new-instance p1, Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 87
    .line 88
    invoke-direct {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 113
    .line 114
    .line 115
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 127
    .line 128
    invoke-virtual {p0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 134
    .line 135
    invoke-virtual {p0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 141
    .line 142
    invoke-virtual {p0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 148
    .line 149
    invoke-virtual {p0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 150
    .line 151
    .line 152
    sget-boolean p1, Lcom/mycompany/app/pref/PrefRead;->K:Z

    .line 153
    .line 154
    if-eqz p1, :cond_0

    .line 155
    .line 156
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 159
    .line 160
    .line 161
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 162
    .line 163
    new-instance v0, Lcom/mycompany/app/wview/WebAreaView$3;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaView$3;-><init>(Lcom/mycompany/app/wview/WebAreaView;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 172
    .line 173
    new-instance v0, Lcom/mycompany/app/wview/WebAreaView$4;

    .line 174
    .line 175
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaView$4;-><init>(Lcom/mycompany/app/wview/WebAreaView;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 182
    .line 183
    new-instance v0, Lcom/mycompany/app/wview/WebAreaView$5;

    .line 184
    .line 185
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaView$5;-><init>(Lcom/mycompany/app/wview/WebAreaView;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .line 190
    .line 191
    iget-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 192
    .line 193
    new-instance v0, Lcom/mycompany/app/wview/WebAreaView$6;

    .line 194
    .line 195
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebAreaView$6;-><init>(Lcom/mycompany/app/wview/WebAreaView;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebAreaView;->a()V

    .line 202
    .line 203
    .line 204
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 8
    .line 9
    const/high16 v1, -0x1000000

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 17
    .line 18
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_24:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_24:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    const v2, -0xc0c0c1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, -0x1

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_24:I

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 80
    .line 81
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_24:I

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    const v2, -0x1f1f20

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebAreaView;->c()V

    .line 110
    .line 111
    .line 112
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 113
    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    const v1, -0x4f4f50

    .line 117
    .line 118
    .line 119
    :cond_2
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaView;->m:I

    .line 120
    .line 121
    if-eq v0, v1, :cond_4

    .line 122
    .line 123
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaView;->m:I

    .line 124
    .line 125
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->n:Landroid/graphics/Paint;

    .line 126
    .line 127
    if-nez v0, :cond_3

    .line 128
    .line 129
    new-instance v0, Landroid/graphics/Paint;

    .line 130
    .line 131
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->n:Landroid/graphics/Paint;

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->n:Landroid/graphics/Paint;

    .line 141
    .line 142
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->n:Landroid/graphics/Paint;

    .line 148
    .line 149
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 150
    .line 151
    int-to-float v1, v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    .line 154
    .line 155
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->n:Landroid/graphics/Paint;

    .line 156
    .line 157
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaView;->m:I

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebAreaView;->invalidate()V

    .line 163
    .line 164
    .line 165
    :cond_4
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaView;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->h:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->k:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->f:Landroid/content/Context;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->g:Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->l:Landroid/graphics/RectF;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->n:Landroid/graphics/Paint;

    .line 53
    .line 54
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->i:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->O:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_shadow_add_dark_24:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_shadow_minus_dark_24:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->O:Z

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_shadow_add_black_24:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_shadow_minus_black_24:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final d(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaView;->u:I

    .line 7
    .line 8
    add-int v1, p1, v0

    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaView;->y:I

    .line 11
    .line 12
    if-le v1, v2, :cond_1

    .line 13
    .line 14
    sub-int p1, v2, v0

    .line 15
    .line 16
    :cond_1
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 17
    .line 18
    add-int v1, p2, v0

    .line 19
    .line 20
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaView;->z:I

    .line 21
    .line 22
    if-le v1, v2, :cond_2

    .line 23
    .line 24
    sub-int p2, v2, v0

    .line 25
    .line 26
    :cond_2
    const/4 v0, 0x0

    .line 27
    if-gez p1, :cond_3

    .line 28
    .line 29
    move p1, v0

    .line 30
    :cond_3
    if-gez p2, :cond_4

    .line 31
    .line 32
    move p2, v0

    .line 33
    :cond_4
    iput p1, p0, Lcom/mycompany/app/wview/WebAreaView;->A:I

    .line 34
    .line 35
    iput p2, p0, Lcom/mycompany/app/wview/WebAreaView;->B:I

    .line 36
    .line 37
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaView;->w:I

    .line 38
    .line 39
    add-int/2addr p1, v0

    .line 40
    int-to-float p1, p1

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 42
    .line 43
    .line 44
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaView;->x:I

    .line 45
    .line 46
    add-int/2addr p2, p1

    .line 47
    int-to-float p1, p2

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/wview/WebAreaView;->n:Landroid/graphics/Paint;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/wview/WebAreaView;->l:Landroid/graphics/RectF;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    if-eq v0, v2, :cond_5

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-eq v0, v3, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v0, v2, :cond_5

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v3, p0, Lcom/mycompany/app/wview/WebAreaView;->q:I

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    iget v4, p0, Lcom/mycompany/app/wview/WebAreaView;->r:I

    .line 40
    .line 41
    int-to-float v4, v4

    .line 42
    invoke-static {v3, v0, v4, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget-boolean v4, p0, Lcom/mycompany/app/wview/WebAreaView;->C:Z

    .line 47
    .line 48
    if-nez v4, :cond_2

    .line 49
    .line 50
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 51
    .line 52
    int-to-float v5, v5

    .line 53
    cmpg-float v3, v3, v5

    .line 54
    .line 55
    if-gez v3, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 59
    .line 60
    int-to-float v5, v5

    .line 61
    const/high16 v6, 0x40000000    # 2.0f

    .line 62
    .line 63
    div-float/2addr v5, v6

    .line 64
    cmpg-float v3, v3, v5

    .line 65
    .line 66
    if-gez v3, :cond_3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    if-nez v4, :cond_4

    .line 70
    .line 71
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebAreaView;->C:Z

    .line 72
    .line 73
    new-instance v2, Lcom/mycompany/app/wview/WebAreaView$7;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/mycompany/app/wview/WebAreaView$7;-><init>(Lcom/mycompany/app/wview/WebAreaView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaView;->q:I

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaView;->r:I

    .line 92
    .line 93
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaView;->q:I

    .line 94
    .line 95
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaView;->s:I

    .line 96
    .line 97
    add-int/2addr v1, v2

    .line 98
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaView;->t:I

    .line 99
    .line 100
    add-int/2addr v0, v2

    .line 101
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebAreaView;->d(II)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebAreaView;->p:Z

    .line 106
    .line 107
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebAreaView;->C:Z

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebAreaView;->p:Z

    .line 119
    .line 120
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebAreaView;->C:Z

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaView;->q:I

    .line 127
    .line 128
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaView;->r:I

    .line 133
    .line 134
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaView;->A:I

    .line 135
    .line 136
    iget v2, p0, Lcom/mycompany/app/wview/WebAreaView;->q:I

    .line 137
    .line 138
    sub-int/2addr v1, v2

    .line 139
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaView;->s:I

    .line 140
    .line 141
    iget v1, p0, Lcom/mycompany/app/wview/WebAreaView;->B:I

    .line 142
    .line 143
    sub-int/2addr v1, v0

    .line 144
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaView;->t:I

    .line 145
    .line 146
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    return p1
.end method

.method public final e(Landroid/view/View;II)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sub-int/2addr v2, v3

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    sub-int/2addr v3, v1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    sub-int/2addr v3, p1

    .line 32
    iput v0, p0, Lcom/mycompany/app/wview/WebAreaView;->w:I

    .line 33
    .line 34
    iput v1, p0, Lcom/mycompany/app/wview/WebAreaView;->x:I

    .line 35
    .line 36
    iput v2, p0, Lcom/mycompany/app/wview/WebAreaView;->y:I

    .line 37
    .line 38
    iput v3, p0, Lcom/mycompany/app/wview/WebAreaView;->z:I

    .line 39
    .line 40
    const/16 p1, -0x4d2

    .line 41
    .line 42
    if-ne p2, p1, :cond_1

    .line 43
    .line 44
    if-ne p3, p1, :cond_1

    .line 45
    .line 46
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaView;->u:I

    .line 47
    .line 48
    sub-int/2addr v2, p1

    .line 49
    div-int/lit8 v2, v2, 0x2

    .line 50
    .line 51
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 52
    .line 53
    sub-int/2addr v3, p1

    .line 54
    div-int/lit8 v3, v3, 0x2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/16 p1, -0x162e

    .line 58
    .line 59
    if-ne p2, p1, :cond_2

    .line 60
    .line 61
    if-ne p3, p1, :cond_2

    .line 62
    .line 63
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaView;->u:I

    .line 64
    .line 65
    sub-int/2addr v2, p1

    .line 66
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 67
    .line 68
    sub-int/2addr v3, p1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    sub-int/2addr p2, v0

    .line 71
    sub-int/2addr p3, v1

    .line 72
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaView;->u:I

    .line 73
    .line 74
    div-int/lit8 p1, p1, 0x2

    .line 75
    .line 76
    sub-int v2, p2, p1

    .line 77
    .line 78
    iget p1, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 79
    .line 80
    mul-int/lit8 p2, p1, 0x2

    .line 81
    .line 82
    if-le p3, p2, :cond_3

    .line 83
    .line 84
    sub-int/2addr p3, p2

    .line 85
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 86
    .line 87
    sub-int v3, p3, p1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    div-int/lit8 p1, p1, 0x2

    .line 91
    .line 92
    add-int v3, p1, p3

    .line 93
    .line 94
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/mycompany/app/wview/WebAreaView;->d(II)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public getViewHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaView;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public getViewWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebAreaView;->u:I

    .line 2
    .line 3
    return v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebAreaView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/wview/WebAreaView;->l:Landroid/graphics/RectF;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    sget p4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 9
    .line 10
    int-to-float p4, p4

    .line 11
    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr p4, v0

    .line 14
    int-to-float p1, p1

    .line 15
    sub-float/2addr p1, p4

    .line 16
    int-to-float p2, p2

    .line 17
    sub-float/2addr p2, p4

    .line 18
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setFltListener(Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebAreaView;->g:Lcom/mycompany/app/wview/WebAreaView$WebAreaListener;

    .line 2
    .line 3
    return-void
.end method
