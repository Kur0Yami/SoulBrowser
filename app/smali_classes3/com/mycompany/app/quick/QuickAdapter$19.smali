.class Lcom/mycompany/app/quick/QuickAdapter$19;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$19;->a:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter$19;->a:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p2}, Lcom/mycompany/app/quick/QuickAdapter;->J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->F:Lcom/mycompany/app/view/MyRoundImage;

    .line 26
    .line 27
    if-nez v0, :cond_4

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 35
    .line 36
    if-eq v0, p1, :cond_5

    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :cond_5
    iget-object p1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->F:Lcom/mycompany/app/view/MyRoundImage;

    .line 40
    .line 41
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
