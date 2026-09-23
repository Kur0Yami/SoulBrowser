.class Lcom/mycompany/app/quick/QuickView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickDragHelper$QuickDragListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 3
    .line 4
    iput-boolean v0, v1, Lcom/mycompany/app/quick/QuickView;->p:Z

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, v1, Lcom/mycompany/app/quick/QuickView;->p:Z

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-nez p1, :cond_2

    .line 14
    .line 15
    iget-object p1, v1, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p1, v1, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p1, Lcom/mycompany/app/quick/QuickView$6$1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickView$6$1;-><init>(Lcom/mycompany/app/quick/QuickView$6;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_0
    return-void
.end method

.method public final b(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/quick/QuickAdapter;->N(II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final c(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickView$6;->a:Lcom/mycompany/app/quick/QuickView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickView;->i0:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyCoverView;

    .line 17
    .line 18
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 19
    .line 20
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 21
    .line 22
    int-to-float v4, v4

    .line 23
    const/high16 v5, 0x41000000    # 8.0f

    .line 24
    .line 25
    div-float/2addr v4, v5

    .line 26
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 31
    .line 32
    mul-int/lit8 v5, v5, 0x2

    .line 33
    .line 34
    const v6, -0x50506

    .line 35
    .line 36
    .line 37
    invoke-direct {v2, v3, v6, v4, v5}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;III)V

    .line 38
    .line 39
    .line 40
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 48
    .line 49
    const/high16 v3, -0x5f000000

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyCoverView;->setBackColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 55
    .line 56
    new-instance v3, Lcom/mycompany/app/quick/QuickView$9;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 65
    .line 66
    const/4 v3, -0x1

    .line 67
    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 68
    .line 69
    .line 70
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickView;->I:Lcom/mycompany/app/view/MyCoverView;

    .line 71
    .line 72
    const/high16 v3, 0x3f800000    # 1.0f

    .line 73
    .line 74
    const-wide/16 v4, 0xc8

    .line 75
    .line 76
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/mycompany/app/view/MyCoverView;->n(ZFJ)V

    .line 77
    .line 78
    .line 79
    :goto_0
    iput p1, v0, Lcom/mycompany/app/quick/QuickView;->J:I

    .line 80
    .line 81
    iput p2, v0, Lcom/mycompany/app/quick/QuickView;->K:I

    .line 82
    .line 83
    new-instance p1, Lcom/mycompany/app/quick/QuickView$6$2;

    .line 84
    .line 85
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/QuickView$6$2;-><init>(Lcom/mycompany/app/quick/QuickView$6;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/mycompany/app/quick/QuickView;->z(Ljava/lang/Runnable;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
