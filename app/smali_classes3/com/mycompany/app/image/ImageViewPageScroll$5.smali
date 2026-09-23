.class Lcom/mycompany/app/image/ImageViewPageScroll$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewPageScroll;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$5;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 13

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$5;->a:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->K:Lcom/mycompany/app/image/ImageViewPager;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPager;->w()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->S:Lcom/mycompany/app/image/ImageViewControl;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->T:I

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    if-le v0, v1, :cond_4

    .line 20
    .line 21
    iget v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->U:I

    .line 22
    .line 23
    if-le v0, v1, :cond_4

    .line 24
    .line 25
    iget v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->z:I

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    if-ne v0, v1, :cond_3

    .line 32
    .line 33
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    iget-object v1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->S:Lcom/mycompany/app/image/ImageViewControl;

    .line 42
    .line 43
    iget v0, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->T:I

    .line 44
    .line 45
    div-int/lit8 v5, v0, 0x2

    .line 46
    .line 47
    iget v6, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->U:I

    .line 48
    .line 49
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    xor-int/lit8 v2, p1, 0x1

    .line 56
    .line 57
    move v3, p2

    .line 58
    move/from16 v4, p3

    .line 59
    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/image/ImageViewControl;->n(ZIIII)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    iget-object v7, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->S:Lcom/mycompany/app/image/ImageViewControl;

    .line 65
    .line 66
    iget v11, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->T:I

    .line 67
    .line 68
    iget v12, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->U:I

    .line 69
    .line 70
    iget-object p1, p1, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->E5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    xor-int/lit8 v8, p1, 0x1

    .line 77
    .line 78
    move v9, p2

    .line 79
    move/from16 v10, p3

    .line 80
    .line 81
    invoke-virtual/range {v7 .. v12}, Lcom/mycompany/app/image/ImageViewControl;->n(ZIIII)V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_0
    return-void
.end method
