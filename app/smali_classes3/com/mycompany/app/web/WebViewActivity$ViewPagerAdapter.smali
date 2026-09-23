.class Lcom/mycompany/app/web/WebViewActivity$ViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/web/WebViewActivity$ViewPagerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$ViewPagerAdapter;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    return v0
.end method

.method public final f(I)I
    .locals 0

    .line 1
    return p1
.end method

.method public final bridge synthetic n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity$ViewPagerHolder;

    .line 2
    .line 3
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 1
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->splash_intro_1:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-ne p2, p1, :cond_1

    .line 10
    .line 11
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->splash_intro_2:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 v0, 0x2

    .line 15
    if-ne p2, v0, :cond_2

    .line 16
    .line 17
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->splash_intro_3:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->splash_intro_4:I

    .line 21
    .line 22
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$ViewPagerAdapter;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    .line 41
    iget v4, v1, Lcom/mycompany/app/web/WebViewActivity;->y1:I

    .line 42
    .line 43
    const/4 v5, -0x2

    .line 44
    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    const/16 v4, 0x11

    .line 48
    .line 49
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    .line 51
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 55
    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v3, v3, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 63
    .line 64
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->e(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/mycompany/app/view/GlideRequests;

    .line 69
    .line 70
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 71
    .line 72
    :cond_3
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 73
    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {v3, p2}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 83
    .line 84
    .line 85
    :try_start_0
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->W6(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 89
    .line 90
    const/4 v2, -0x1

    .line 91
    invoke-direct {p2, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_0
    iget-object p2, v1, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 99
    .line 100
    if-nez p2, :cond_4

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    sget-boolean p2, Lcom/mycompany/app/pref/PrefSync;->j:Z

    .line 104
    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    const/4 p2, 0x0

    .line 108
    sput-boolean p2, Lcom/mycompany/app/pref/PrefSync;->j:Z

    .line 109
    .line 110
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 111
    .line 112
    const/16 v3, 0xb

    .line 113
    .line 114
    const-string v4, "mSplash"

    .line 115
    .line 116
    invoke-static {v3, v2, v4, p2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object p2, v1, Lcom/mycompany/app/web/WebViewActivity;->l1:Lcom/mycompany/app/view/MyFadeRelative;

    .line 120
    .line 121
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyFadeRelative;->d(Z)V

    .line 122
    .line 123
    .line 124
    :goto_1
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$ViewPagerHolder;

    .line 125
    .line 126
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    .line 128
    .line 129
    return-object p1
.end method
