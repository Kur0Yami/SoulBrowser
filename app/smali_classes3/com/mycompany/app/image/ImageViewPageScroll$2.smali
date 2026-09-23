.class Lcom/mycompany/app/image/ImageViewPageScroll$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$2;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$2;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->p:I

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$3;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$3;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 27
    .line 28
    sget v2, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 34
    .line 35
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$4;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$4;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySizeFrame;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->S1(Lcom/mycompany/app/main/MainActivity;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 61
    .line 62
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$PageChangeListener;

    .line 63
    .line 64
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$PageChangeListener;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 65
    .line 66
    .line 67
    iget-object v3, v1, Landroidx/viewpager/widget/ViewPager;->V:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v3, v1, Landroidx/viewpager/widget/ViewPager;->V:Ljava/util/ArrayList;

    .line 77
    .line 78
    :cond_3
    iget-object v1, v1, Landroidx/viewpager/widget/ViewPager;->V:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 84
    .line 85
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$5;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$5;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageViewPager;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$6;

    .line 96
    .line 97
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$6;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->P:Z

    .line 104
    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->P:Z

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageScroll;->m1(Z)V

    .line 111
    .line 112
    .line 113
    :cond_4
    new-instance v1, Landroid/view/GestureDetector;

    .line 114
    .line 115
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 116
    .line 117
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageScroll$7;

    .line 118
    .line 119
    invoke-direct {v3, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$7;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->G0:Landroid/view/GestureDetector;

    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 128
    .line 129
    if-nez v1, :cond_5

    .line 130
    .line 131
    :goto_0
    return-void

    .line 132
    :cond_5
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$8;

    .line 133
    .line 134
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$8;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 138
    .line 139
    .line 140
    return-void
.end method
