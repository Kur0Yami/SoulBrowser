.class Lcom/mycompany/app/image/ImageViewListHori$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$2;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$2;->c:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->n:I

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$3;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$3;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 26
    .line 27
    sget v2, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 33
    .line 34
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$4;

    .line 35
    .line 36
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$4;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySizeFrame;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->M:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-direct {v1, v2, v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->h0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 52
    .line 53
    iput-object v2, v1, Lcom/mycompany/app/zoom/ZoomImageAttacher;->c:Landroid/view/ViewGroup;

    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 56
    .line 57
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageListHori;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 67
    .line 68
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->S1(Lcom/mycompany/app/main/MainActivity;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageListHori;->setPageMargin(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 78
    .line 79
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->h0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageListHori;->setAttacher(Lcom/mycompany/app/zoom/ZoomImageAttacher;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 85
    .line 86
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$5;

    .line 87
    .line 88
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$5;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lcom/mycompany/app/image/ImageListHori;->setListener(Lcom/mycompany/app/image/ImageScrollListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->P:Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$6;

    .line 97
    .line 98
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$6;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->R:Z

    .line 105
    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    iput-boolean v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->R:Z

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Lcom/mycompany/app/image/ImageViewListHori;->a1(Z)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 114
    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    :goto_0
    return-void

    .line 118
    :cond_4
    new-instance v2, Lcom/mycompany/app/image/ImageViewListHori$7;

    .line 119
    .line 120
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewListHori$7;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 124
    .line 125
    .line 126
    return-void
.end method
