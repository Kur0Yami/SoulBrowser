.class public Lcom/mycompany/app/main/NewsMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I


# instance fields
.field public d:I

.field public e:Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$string;->news_topic_headline:I

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$string;->news_topic_world:I

    .line 4
    .line 5
    sget v2, Lnet/kaki87/soul2/testing/R$string;->news_topic_nation:I

    .line 6
    .line 7
    sget v3, Lnet/kaki87/soul2/testing/R$string;->news_topic_business:I

    .line 8
    .line 9
    sget v4, Lnet/kaki87/soul2/testing/R$string;->news_topic_tech:I

    .line 10
    .line 11
    sget v5, Lnet/kaki87/soul2/testing/R$string;->news_topic_enter:I

    .line 12
    .line 13
    sget v6, Lnet/kaki87/soul2/testing/R$string;->news_topic_sports:I

    .line 14
    .line 15
    sget v7, Lnet/kaki87/soul2/testing/R$string;->news_topic_science:I

    .line 16
    .line 17
    sget v8, Lnet/kaki87/soul2/testing/R$string;->news_topic_health:I

    .line 18
    .line 19
    sget v9, Lnet/kaki87/soul2/testing/R$string;->search_url:I

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/mycompany/app/main/NewsMenuAdapter;->f:[I

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_newspaper_black_24:I

    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 30
    .line 31
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_travel_explore_black_24:I

    .line 32
    .line 33
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_monitoring_black_24:I

    .line 34
    .line 35
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_rocket_launch_black_24:I

    .line 36
    .line 37
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_movie_filter_black_24:I

    .line 38
    .line 39
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_sports_handball_black_24:I

    .line 40
    .line 41
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_biotech_black_24:I

    .line 42
    .line 43
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_cardiology_black_24:I

    .line 44
    .line 45
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 46
    .line 47
    filled-new-array/range {v1 .. v10}, [I

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/mycompany/app/main/NewsMenuAdapter;->g:[I

    .line 52
    .line 53
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_newspaper_dark_24:I

    .line 54
    .line 55
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 56
    .line 57
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_travel_explore_dark_24:I

    .line 58
    .line 59
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_monitoring_dark_24:I

    .line 60
    .line 61
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_rocket_launch_dark_24:I

    .line 62
    .line 63
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_movie_filter_dark_24:I

    .line 64
    .line 65
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_sports_handball_dark_24:I

    .line 66
    .line 67
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_biotech_dark_24:I

    .line 68
    .line 69
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_cardiology_dark_24:I

    .line 70
    .line 71
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 72
    .line 73
    filled-new-array/range {v1 .. v10}, [I

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lcom/mycompany/app/main/NewsMenuAdapter;->h:[I

    .line 78
    .line 79
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_newspaper_white_24:I

    .line 80
    .line 81
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_white_24:I

    .line 82
    .line 83
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_travel_explore_white_24:I

    .line 84
    .line 85
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_monitoring_white_24:I

    .line 86
    .line 87
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_rocket_launch_white_24:I

    .line 88
    .line 89
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_movie_filter_white_24:I

    .line 90
    .line 91
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_sports_handball_white_24:I

    .line 92
    .line 93
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_biotech_white_24:I

    .line 94
    .line 95
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_cardiology_white_24:I

    .line 96
    .line 97
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_white_24:I

    .line 98
    .line 99
    filled-new-array/range {v1 .. v10}, [I

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lcom/mycompany/app/main/NewsMenuAdapter;->i:[I

    .line 104
    .line 105
    const/16 v0, 0xa

    .line 106
    .line 107
    new-array v0, v0, [I

    .line 108
    .line 109
    fill-array-data v0, :array_0

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/mycompany/app/main/NewsMenuAdapter;->j:[I

    .line 113
    .line 114
    return-void

    .line 115
    :array_0
    .array-data 4
        -0x10000
        -0x3aee9e
        -0x9dff16
        -0xd69d01
        -0xff472c
        -0xff37ad
        -0x7d88e9
        -0x9100
        -0x22d400
        -0x8a8a8b
    .end array-data
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    const/16 v0, 0xa

    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/mycompany/app/main/NewsMenuAdapter;->f:[I

    .line 9
    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    int-to-long v0, p1

    .line 13
    return-wide v0

    .line 14
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 15
    .line 16
    return-wide v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1
    check-cast p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/main/NewsMenuAdapter;->d:I

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/mycompany/app/main/NewsMenuAdapter$1;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/mycompany/app/main/NewsMenuAdapter$1;-><init>(Lcom/mycompany/app/main/NewsMenuAdapter;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    sget v2, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 22
    .line 23
    const/16 v3, 0xa

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    if-ne p2, v2, :cond_3

    .line 27
    .line 28
    iget-object v2, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 29
    .line 30
    sget-object v5, Lcom/mycompany/app/main/NewsMenuAdapter;->j:[I

    .line 31
    .line 32
    if-ltz p2, :cond_2

    .line 33
    .line 34
    if-lt p2, v3, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    aget v5, v5, p2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    aget v5, v5, v4

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyCircleView;->setColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget-object v2, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 52
    .line 53
    const/16 v5, 0x8

    .line 54
    .line 55
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :goto_2
    iget-object v2, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->v:Landroid/view/View;

    .line 59
    .line 60
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 61
    .line 62
    if-ne p2, v5, :cond_6

    .line 63
    .line 64
    sget-object v5, Lcom/mycompany/app/main/NewsMenuAdapter;->i:[I

    .line 65
    .line 66
    if-ltz p2, :cond_5

    .line 67
    .line 68
    if-lt p2, v3, :cond_4

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    aget v5, v5, p2

    .line 72
    .line 73
    goto :goto_6

    .line 74
    :cond_5
    :goto_3
    aget v5, v5, v4

    .line 75
    .line 76
    goto :goto_6

    .line 77
    :cond_6
    if-nez v0, :cond_9

    .line 78
    .line 79
    sget-object v5, Lcom/mycompany/app/main/NewsMenuAdapter;->g:[I

    .line 80
    .line 81
    if-ltz p2, :cond_8

    .line 82
    .line 83
    if-lt p2, v3, :cond_7

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_7
    aget v5, v5, p2

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_8
    :goto_4
    aget v5, v5, v4

    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_9
    sget-object v5, Lcom/mycompany/app/main/NewsMenuAdapter;->h:[I

    .line 93
    .line 94
    if-ltz p2, :cond_b

    .line 95
    .line 96
    if-lt p2, v3, :cond_a

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_a
    aget v5, v5, p2

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_b
    :goto_5
    aget v5, v5, v4

    .line 103
    .line 104
    :goto_6
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    sget-object v5, Lcom/mycompany/app/main/NewsMenuAdapter;->f:[I

    .line 110
    .line 111
    if-ltz p2, :cond_d

    .line 112
    .line 113
    if-lt p2, v3, :cond_c

    .line 114
    .line 115
    goto :goto_7

    .line 116
    :cond_c
    aget p2, v5, p2

    .line 117
    .line 118
    goto :goto_8

    .line 119
    :cond_d
    :goto_7
    aget p2, v5, v4

    .line 120
    .line 121
    :goto_8
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 122
    .line 123
    .line 124
    if-nez v0, :cond_e

    .line 125
    .line 126
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 127
    .line 128
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    const/high16 p2, -0x1000000

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_e
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 140
    .line 141
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    const p2, -0x50506

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
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
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 18
    .line 19
    .line 20
    const/high16 v1, 0x42500000    # 52.0f

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    float-to-int v2, v2

    .line 27
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    invoke-direct {v3, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/mycompany/app/view/MyCircleView;

    .line 37
    .line 38
    invoke-direct {v2, p1}, Lcom/mycompany/app/view/MyCircleView;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    const/high16 v3, 0x42000000    # 32.0f

    .line 42
    .line 43
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    float-to-int v3, v3

    .line 48
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    const/high16 v3, 0x41200000    # 10.0f

    .line 54
    .line 55
    invoke-static {p1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    float-to-int v3, v3

    .line 60
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 61
    .line 62
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    new-instance v3, Landroid/view/View;

    .line 69
    .line 70
    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const/high16 v5, 0x41a00000    # 20.0f

    .line 74
    .line 75
    invoke-static {p1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    float-to-int v5, v5

    .line 80
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .line 82
    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    .line 84
    .line 85
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 86
    .line 87
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 88
    .line 89
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    new-instance v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    invoke-direct {v5, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    .line 99
    .line 100
    const/16 p2, 0x10

    .line 101
    .line 102
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    .line 104
    .line 105
    const/4 p2, 0x1

    .line 106
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 107
    .line 108
    .line 109
    const/high16 v6, 0x41800000    # 16.0f

    .line 110
    .line 111
    invoke-virtual {v5, p2, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 112
    .line 113
    .line 114
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 115
    .line 116
    const/4 v6, -0x2

    .line 117
    invoke-direct {p2, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    float-to-int p1, p1

    .line 125
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    new-instance p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;

    .line 132
    .line 133
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    iput-object v2, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->u:Lcom/mycompany/app/view/MyCircleView;

    .line 137
    .line 138
    iput-object v3, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->v:Landroid/view/View;

    .line 139
    .line 140
    iput-object v5, p1, Lcom/mycompany/app/main/NewsMenuAdapter$ListHolder;->w:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    return-object p1
.end method
