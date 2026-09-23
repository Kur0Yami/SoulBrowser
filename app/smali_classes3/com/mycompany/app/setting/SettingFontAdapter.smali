.class public Lcom/mycompany/app/setting/SettingFontAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;,
        Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;

.field public e:Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/regex/Pattern;

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->e:Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->f:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->h:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

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

.method public final f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget p1, p1, Lcom/mycompany/app/setting/SettingFont$FontItem;->a:I

    .line 26
    .line 27
    return p1

    .line 28
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 1
    check-cast p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 10
    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    if-ltz p2, :cond_8

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lt p2, v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 49
    .line 50
    new-instance v1, Lcom/mycompany/app/setting/SettingFontAdapter$1;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFontAdapter$1;-><init>(Lcom/mycompany/app/setting/SettingFontAdapter;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 59
    .line 60
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_draft_black_24:I

    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingFont$FontItem;->c:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->g:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    const-string v3, "\\p{Punct}"

    .line 69
    .line 70
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->g:Ljava/util/regex/Pattern;

    .line 75
    .line 76
    :cond_3
    iget-object v3, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->g:Ljava/util/regex/Pattern;

    .line 77
    .line 78
    const v4, -0x70708

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2, v4, v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 82
    .line 83
    .line 84
    iget-object p2, v0, Lcom/mycompany/app/setting/SettingFont$FontItem;->e:Landroid/graphics/Typeface;

    .line 85
    .line 86
    if-nez p2, :cond_4

    .line 87
    .line 88
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->w1(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iput-object p2, v0, Lcom/mycompany/app/setting/SettingFont$FontItem;->e:Landroid/graphics/Typeface;

    .line 101
    .line 102
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont$FontItem;->e:Landroid/graphics/Typeface;

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont$FontItem;->c:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->f:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-nez p2, :cond_5

    .line 123
    .line 124
    iget-object p2, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->f:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_5

    .line 133
    .line 134
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    const v0, -0xbbcca

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 146
    .line 147
    if-eqz v0, :cond_6

    .line 148
    .line 149
    const v0, -0x50506

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_6
    const/high16 v0, -0x1000000

    .line 154
    .line 155
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    :goto_1
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 159
    .line 160
    if-eqz p2, :cond_7

    .line 161
    .line 162
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 163
    .line 164
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 165
    .line 166
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_7
    iget-object p2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 171
    .line 172
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 173
    .line 174
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 175
    .line 176
    .line 177
    :goto_2
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyLineFrame;->h()V

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_3
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x3

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    new-instance p2, Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0x4

    .line 23
    .line 24
    invoke-direct {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;

    .line 31
    .line 32
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyLineFrame;

    .line 37
    .line 38
    invoke-direct {v1, p1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    if-ne p2, v3, :cond_2

    .line 48
    .line 49
    new-instance p2, Lcom/mycompany/app/setting/SettingFontAdapter$2;

    .line 50
    .line 51
    invoke-direct {p2}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v4, 0x2

    .line 62
    if-ne p2, v4, :cond_3

    .line 63
    .line 64
    new-instance p2, Lcom/mycompany/app/setting/SettingFontAdapter$3;

    .line 65
    .line 66
    invoke-direct {p2}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_0
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    const/4 v4, -0x2

    .line 78
    invoke-direct {p2, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    new-instance p2, Landroid/widget/FrameLayout;

    .line 85
    .line 86
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    sget v5, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 90
    .line 91
    invoke-virtual {v1, p2, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 92
    .line 93
    .line 94
    new-instance v5, Lcom/mycompany/app/view/MyRoundImage;

    .line 95
    .line 96
    invoke-direct {v5, p1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    .line 103
    .line 104
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 107
    .line 108
    .line 109
    const/high16 v6, 0x41400000    # 12.0f

    .line 110
    .line 111
    invoke-static {p1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    float-to-int v6, v6

    .line 116
    int-to-float v6, v6

    .line 117
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 118
    .line 119
    .line 120
    const/high16 v6, 0x41c00000    # 24.0f

    .line 121
    .line 122
    invoke-static {p1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    float-to-int v6, v6

    .line 127
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    .line 129
    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 130
    .line 131
    .line 132
    const/16 v6, 0x11

    .line 133
    .line 134
    iput v6, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    .line 136
    invoke-virtual {p2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    .line 138
    .line 139
    new-instance p2, Landroid/widget/LinearLayout;

    .line 140
    .line 141
    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 145
    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-virtual {p2, v7, v6, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    .line 152
    .line 153
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    .line 155
    invoke-direct {v6, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    const v2, 0x800013

    .line 159
    .line 160
    .line 161
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 162
    .line 163
    sget v2, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 164
    .line 165
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 166
    .line 167
    .line 168
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 169
    .line 170
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .line 175
    .line 176
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    invoke-direct {v2, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 182
    .line 183
    .line 184
    const/high16 p1, 0x41800000    # 16.0f

    .line 185
    .line 186
    invoke-virtual {v2, v3, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 193
    .line 194
    .line 195
    new-instance p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;

    .line 196
    .line 197
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 198
    .line 199
    .line 200
    iput-object v1, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->u:Lcom/mycompany/app/view/MyLineFrame;

    .line 201
    .line 202
    iput-object v5, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 203
    .line 204
    iput-object v2, p1, Lcom/mycompany/app/setting/SettingFontAdapter$QuickListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    return-object p1
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->f:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFontAdapter;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
