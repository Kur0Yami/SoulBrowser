.class public Lcom/mycompany/app/image/ImageThumbAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/image/ImageThumbAdapter$ThumbListener;,
        Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Landroid/content/Context;

.field public e:Lcom/mycompany/app/view/MyRecyclerView;

.field public f:I

.field public g:I

.field public h:Lcom/mycompany/app/compress/Compress;

.field public i:I

.field public j:Lcom/mycompany/app/main/MainListLoader;

.field public k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field public l:Z

.field public m:Lcom/mycompany/app/image/ImageThumbAdapter$ThumbListener;

.field public n:I


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->n:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/compress/Compress;->R()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr v0, p2

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, p2

    .line 26
    :goto_0
    iget-object v1, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v0, 0x1

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    .line 49
    iget v2, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->i:I

    .line 50
    .line 51
    if-ne p2, v2, :cond_2

    .line 52
    .line 53
    const p2, -0xbbcca

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const p2, -0xdededf

    .line 58
    .line 59
    .line 60
    :goto_1
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 73
    .line 74
    new-instance v1, Lcom/mycompany/app/image/ImageThumbAdapter$2;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/mycompany/app/image/ImageThumbAdapter$2;-><init>(Lcom/mycompany/app/image/ImageThumbAdapter;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    iget-boolean p2, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->l:Z

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    if-eqz p2, :cond_3

    .line 86
    .line 87
    iget-object p1, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    iget p2, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->f:I

    .line 94
    .line 95
    const/16 v2, 0xc

    .line 96
    .line 97
    if-ne p2, v2, :cond_4

    .line 98
    .line 99
    iget-object p1, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 100
    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/image/ImageThumbAdapter;->w(Lcom/mycompany/app/view/MyThumbView;I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 106
    .line 107
    if-nez p2, :cond_5

    .line 108
    .line 109
    iget-object p1, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 110
    .line 111
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_24:I

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 125
    .line 126
    .line 127
    const/16 v3, 0x8

    .line 128
    .line 129
    iput v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 130
    .line 131
    invoke-virtual {p2, v0}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iput-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v3, p2, Lcom/mycompany/app/compress/Compress;->c:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->r:Ljava/lang/String;

    .line 140
    .line 141
    iput v0, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 142
    .line 143
    iput-object p2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->P:Lcom/mycompany/app/compress/Compress;

    .line 144
    .line 145
    invoke-static {v2}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    iget-object p1, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 162
    .line 163
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    .line 165
    .line 166
    iget-object p2, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 169
    .line 170
    invoke-virtual {p2, v2, p1}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_2
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    const/high16 v0, 0x42800000    # 64.0f

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    float-to-int v0, v0

    .line 16
    const/high16 v1, 0x42a40000    # 82.0f

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    new-instance v2, Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 29
    .line 30
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    invoke-direct {v3, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/view/View;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    const v1, -0xdededf

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 50
    .line 51
    .line 52
    sget v3, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 53
    .line 54
    invoke-virtual {v2, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/mycompany/app/view/MyThumbView;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lcom/mycompany/app/view/MyThumbView;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-direct {v4, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    .line 69
    .line 70
    const/16 p2, 0x11

    .line 71
    .line 72
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 73
    .line 74
    .line 75
    const/4 p2, 0x3

    .line 76
    invoke-virtual {v4, p2}, Landroid/view/View;->setTextDirection(I)V

    .line 77
    .line 78
    .line 79
    const/high16 p2, 0x41900000    # 18.0f

    .line 80
    .line 81
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    float-to-int p1, p1

    .line 86
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 87
    .line 88
    .line 89
    const/4 p1, 0x1

    .line 90
    const/high16 p2, 0x41600000    # 14.0f

    .line 91
    .line 92
    invoke-virtual {v4, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 93
    .line 94
    .line 95
    const/4 p1, -0x1

    .line 96
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 100
    .line 101
    .line 102
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 103
    .line 104
    const/4 p2, -0x2

    .line 105
    invoke-direct {p1, v3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    const p2, 0x800053

    .line 109
    .line 110
    .line 111
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    .line 113
    invoke-virtual {v2, v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    new-instance p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;

    .line 117
    .line 118
    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 122
    .line 123
    iput-object v4, p1, Lcom/mycompany/app/image/ImageThumbAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    return-object p1
.end method

.method public final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->f:I

    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v0, v1, :cond_3

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 29
    .line 30
    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-boolean v3, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 34
    .line 35
    iput-boolean v3, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 36
    .line 37
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 48
    .line 49
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    iput-object v2, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    :goto_0
    return-void

    .line 64
    :cond_4
    new-instance v0, Lcom/mycompany/app/main/MainListLoader;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->d:Landroid/content/Context;

    .line 67
    .line 68
    new-instance v2, Lcom/mycompany/app/image/ImageThumbAdapter$1;

    .line 69
    .line 70
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-direct {v0, v1, v3, v2}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->j:Lcom/mycompany/app/main/MainListLoader;

    .line 77
    .line 78
    return-void
.end method

.method public final w(Lcom/mycompany/app/view/MyThumbView;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p2}, Lcom/mycompany/app/compress/Compress;->n(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->g:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_24:I

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyThumbView;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x2

    .line 43
    invoke-virtual {v1, v0, v4, v3}, Lcom/mycompany/app/compress/Compress;->f(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyThumbView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x8

    .line 66
    .line 67
    iput v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 68
    .line 69
    iget-object v1, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->h:Lcom/mycompany/app/compress/Compress;

    .line 70
    .line 71
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->b:Lcom/mycompany/app/compress/Compress;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/mycompany/app/compress/Compress;->c:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v1, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->r:Ljava/lang/String;

    .line 76
    .line 77
    iput p2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 78
    .line 79
    iput v4, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    iput-boolean p2, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 83
    .line 84
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object v1, p0, Lcom/mycompany/app/image/ImageThumbAdapter;->k:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 89
    .line 90
    new-instance v2, Lcom/mycompany/app/image/ImageThumbAdapter$3;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/mycompany/app/image/ImageThumbAdapter$3;-><init>(Lcom/mycompany/app/image/ImageThumbAdapter;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_0
    return-void
.end method
