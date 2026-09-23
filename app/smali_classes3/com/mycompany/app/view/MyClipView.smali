.class public Lcom/mycompany/app/view/MyClipView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyClipView$MyClipListener;
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lcom/mycompany/app/view/MyClipView$MyClipListener;

.field public m:Landroidx/appcompat/widget/AppCompatTextView;

.field public n:Landroid/widget/ImageView;

.field public o:Lcom/mycompany/app/view/MyButtonImage;

.field public p:Lcom/mycompany/app/view/MyButtonImage;

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Z

.field public w:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyClipView;->c:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/view/MyClipView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/view/MyClipView;->getClipData()V

    return-void
.end method

.method private getClipData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->c:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->r0(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/mycompany/app/view/MyClipView;->getClipSub()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private getClipSub()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    if-le v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v1, " "

    .line 35
    .line 36
    const-string v2, "\u00a0"

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "-"

    .line 43
    .line 44
    const-string v2, "\u2011"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "/"

    .line 51
    .line 52
    const-string v2, "\u2044"

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "[\\f\\n\\r\\t\\x0B]"

    .line 59
    .line 60
    const-string v2, ""

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    iput-object v0, p0, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyClipView;->g()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget v1, Lnet/kaki87/soul2/testing/R$string;->copied_text:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->c:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    .line 16
    .line 17
    const/high16 v2, 0x42500000    # 52.0f

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    float-to-int v2, v2

    .line 24
    const/high16 v3, 0x42c00000    # 96.0f

    .line 25
    .line 26
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    float-to-int v3, v3

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 33
    .line 34
    .line 35
    const v2, 0x800013

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    const/high16 v3, 0x41800000    # 16.0f

    .line 47
    .line 48
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 49
    .line 50
    .line 51
    const/4 v2, -0x1

    .line 52
    invoke-virtual {p0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 53
    .line 54
    .line 55
    new-instance v3, Landroid/widget/ImageView;

    .line 56
    .line 57
    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    .line 64
    .line 65
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 66
    .line 67
    invoke-virtual {p0, v3, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    .line 77
    .line 78
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 79
    .line 80
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 81
    .line 82
    invoke-direct {v6, v7, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    const v7, 0x800005

    .line 86
    .line 87
    .line 88
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 91
    .line 92
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .line 104
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 105
    .line 106
    invoke-direct {v4, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .line 108
    .line 109
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    .line 111
    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    iput-object v1, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    iput-object v3, p0, Lcom/mycompany/app/view/MyClipView;->n:Landroid/widget/ImageView;

    .line 117
    .line 118
    iput-object v5, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->g:Z

    .line 123
    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyClipView;->f()V

    .line 127
    .line 128
    .line 129
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyClipView;->setColor(Z)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    new-instance v1, Lcom/mycompany/app/view/MyClipView$1;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyClipView$1;-><init>(Lcom/mycompany/app/view/MyClipView;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 145
    .line 146
    new-instance v1, Lcom/mycompany/app/view/MyClipView$2;

    .line 147
    .line 148
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyClipView$2;-><init>(Lcom/mycompany/app/view/MyClipView;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 155
    .line 156
    new-instance v1, Lcom/mycompany/app/view/MyClipView$3;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyClipView$3;-><init>(Lcom/mycompany/app/view/MyClipView;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->r:Z

    .line 12
    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/mycompany/app/view/MyClipView;->getClipSub()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/mycompany/app/view/MyClipView;->getClipData()V

    .line 26
    .line 27
    .line 28
    :goto_0
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    new-instance p1, Lcom/mycompany/app/view/MyClipView$6;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyClipView$6;-><init>(Lcom/mycompany/app/view/MyClipView;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->r:Z

    .line 48
    .line 49
    :cond_4
    :goto_2
    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->w:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->c:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/view/MyClipView;->w:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyClipView;->u:Z

    .line 11
    .line 12
    if-ne v3, v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->u:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    new-instance v0, Lcom/mycompany/app/view/MyClipView$4;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 7
    .line 8
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 19
    .line 20
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_dark_20:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_dark_20:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    const v1, -0xc0c0c1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_black_20:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_black_20:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    const v1, -0x1f1f20

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final h(ZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyClipView;->q:Z

    .line 8
    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyClipView;->g()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/16 p1, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 29
    .line 30
    if-ne p1, p2, :cond_3

    .line 31
    .line 32
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->h:Z

    .line 33
    .line 34
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ne p1, v1, :cond_3

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->i:Z

    .line 41
    .line 42
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 43
    .line 44
    if-ne p1, v1, :cond_3

    .line 45
    .line 46
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->j:Z

    .line 47
    .line 48
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 49
    .line 50
    if-ne p1, v1, :cond_3

    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->k:Z

    .line 53
    .line 54
    if-eq p1, p3, :cond_4

    .line 55
    .line 56
    :cond_3
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 57
    .line 58
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->h:Z

    .line 63
    .line 64
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 65
    .line 66
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->i:Z

    .line 67
    .line 68
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->j:Z

    .line 71
    .line 72
    iput-boolean p3, p0, Lcom/mycompany/app/view/MyClipView;->k:Z

    .line 73
    .line 74
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyClipView;->setColor(Z)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->g:Z

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyClipView;->f()V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    sget p2, Lnet/kaki87/soul2/testing/R$string;->copied_text:I

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    .line 94
    .line 95
    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public setColor(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->h:Z

    .line 13
    .line 14
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->i:Z

    .line 17
    .line 18
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->j:Z

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 23
    .line 24
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    const v0, -0x3e3e3f

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->n:Landroid/widget/ImageView;

    .line 46
    .line 47
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_dark_20:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->k:Z

    .line 53
    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_south_west_dark_20:I

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_north_west_dark_20:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    const v0, -0xc0c0c1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    const/high16 v0, -0x1000000

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->n:Landroid/widget/ImageView;

    .line 95
    .line 96
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_black_20:I

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    .line 100
    .line 101
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyClipView;->k:Z

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_south_west_black_20:I

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_north_west_black_20:I

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 118
    .line 119
    .line 120
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    const v0, -0x1f1f20

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 126
    .line 127
    .line 128
    :goto_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyClipView;->g()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public setSearchList(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyClipView;->b()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
