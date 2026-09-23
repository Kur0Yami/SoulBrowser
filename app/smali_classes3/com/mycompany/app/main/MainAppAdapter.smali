.class public Lcom/mycompany/app/main/MainAppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

.field public e:Ljava/util/List;

.field public f:Lcom/mycompany/app/main/MainListLoader;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/mycompany/app/main/MainAppAdapter;->d:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 5
    .line 6
    new-instance p2, Lcom/mycompany/app/main/MainListLoader;

    .line 7
    .line 8
    new-instance v0, Lcom/mycompany/app/main/MainAppAdapter$1;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p2, p1, v1, v0}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/mycompany/app/main/MainAppAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainAppAdapter;->g:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainAppAdapter;->e:Ljava/util/List;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

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
    check-cast p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainAppAdapter;->e:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    if-ltz p2, :cond_7

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lt p2, v0, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainAppAdapter;->e:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 30
    .line 31
    if-eqz v0, :cond_7

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->u:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->u:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    new-instance v2, Lcom/mycompany/app/main/MainAppAdapter$2;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/MainAppAdapter$2;-><init>(Lcom/mycompany/app/main/MainAppAdapter;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iget-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->u:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    const v2, -0x50506

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->u:Landroid/widget/FrameLayout;

    .line 95
    .line 96
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    const/high16 v2, -0x1000000

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 109
    .line 110
    if-eqz p1, :cond_7

    .line 111
    .line 112
    iget-object v1, p0, Lcom/mycompany/app/main/MainAppAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 113
    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    const v2, -0x70708

    .line 124
    .line 125
    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_android_black_24:I

    .line 129
    .line 130
    invoke-virtual {p1, v2, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_5
    new-instance v1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    const/4 v3, 0x6

    .line 140
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 141
    .line 142
    iget-object v3, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->S:Landroid/content/pm/ResolveInfo;

    .line 143
    .line 144
    iput-object v3, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->S:Landroid/content/pm/ResolveInfo;

    .line 145
    .line 146
    iput p2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 147
    .line 148
    iget-object p2, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 149
    .line 150
    iput-object p2, v1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v1}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    .line 164
    .line 165
    return-void

    .line 166
    :cond_6
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_android_black_24:I

    .line 167
    .line 168
    invoke-virtual {p1, v2, p2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 169
    .line 170
    .line 171
    iget-object p2, p0, Lcom/mycompany/app/main/MainAppAdapter;->f:Lcom/mycompany/app/main/MainListLoader;

    .line 172
    .line 173
    invoke-virtual {p2, v1, p1}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_1
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

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
    new-instance v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    const/4 v2, -0x1

    .line 25
    const/4 v3, -0x2

    .line 26
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/view/MyRoundImage;

    .line 33
    .line 34
    invoke-direct {v1, p1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 45
    .line 46
    .line 47
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 48
    .line 49
    int-to-float v4, v4

    .line 50
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 51
    .line 52
    .line 53
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    .line 55
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 56
    .line 57
    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    .line 63
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 64
    .line 65
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-direct {v4, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    .line 77
    .line 78
    const/4 p2, 0x2

    .line 79
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 80
    .line 81
    .line 82
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 83
    .line 84
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 85
    .line 86
    .line 87
    const/high16 p2, 0x41600000    # 14.0f

    .line 88
    .line 89
    invoke-virtual {v4, v5, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 90
    .line 91
    .line 92
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 93
    .line 94
    invoke-direct {p2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 95
    .line 96
    .line 97
    const/high16 v2, 0x42900000    # 72.0f

    .line 98
    .line 99
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    float-to-int p1, p1

    .line 104
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 105
    .line 106
    invoke-virtual {v0, v4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    new-instance p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;

    .line 110
    .line 111
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->u:Landroid/widget/FrameLayout;

    .line 115
    .line 116
    iput-object v1, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 117
    .line 118
    iput-object v4, p1, Lcom/mycompany/app/main/MainAppAdapter$ViewHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    return-object p1
.end method
